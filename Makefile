## -----------------------------------------
## Creates the Textmate grammar for PARI/GP.
## -----------------------------------------

SHELL := bash
.DEFAULT_GOAL := all

ROOT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
BUILD_DIR := $(ROOT_DIR)syntaxes/


.PHONY: help
help:	## Show the help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: all
all:	## Call clean, build, and test recipes.
all: clean build test;


$(BUILD_DIR):
	@mkdir -p $@

.PHONY: build
build:	## Build Textmate grammar for PARI/GP.
build: $(shell echo $(BUILD_DIR)parigp.{JSON-,YAML-,}tmLanguage)
	@cp $< $(BUILD_DIR)parigp.tmLanguage.json

.PHONY: clean
clean:	## Clean the build targets.
clean:
	@rm -f $(BUILD_DIR)*

J2_TEMPLATES := $(wildcard $(ROOT_DIR)src/*.j2)
J2_RENDERS := $(J2_TEMPLATES:.j2=)
$(BUILD_DIR)parigp.YAML-tmLanguage: $(J2_RENDERS) | $(BUILD_DIR)
	@yq ea '. as $$item ireduce ({}; . * $$item )' $(ROOT_DIR)src/*.YAML-tmLanguage > $@

$(addprefix $(BUILD_DIR)parigp., tmLanguage.json JSON-tmLanguage): $(BUILD_DIR)parigp.YAML-tmLanguage
	@yq -o=json eval $< > $@

$(BUILD_DIR)parigp.tmLanguage: $(BUILD_DIR)parigp.JSON-tmLanguage
	@python -u -c "import json, plistlib as plist;\
	               plist.dump(json.load(fin:=open('$<', 'rt')),\
	                          fout:=open('$@', 'wb'),\
	                          fmt=plist.FMT_XML);\
	               fin.close();\
	               fout.close()"

$(J2_RENDERS): $(BUILD_DIR)gp_builtins.json
	@cat $< | jinja2 --format=yaml $@.j2 > $@

.PHONY: test
test:	## Test the Textmate grammar for PARI/GP.
test: $(BUILD_DIR)parigp.tmLanguage.json
	@vscode-tmgrammar-test \
	 --grammar $(BUILD_DIR)parigp.tmLanguage.json \
	 $(ROOT_DIR)tests/*.gp

$(BUILD_DIR)gp_commands.tsv:
	$(eval FUNCS := $(shell echo '\c' | gp -fq | grep -v 'RETURN'))
	@printf 'Command\tType\n' > $@
	@echo $(FUNCS) |\
	 xargs -n1 |\
	 xargs -I@ $(SHELL) -c "printf '%s\t%s\t%s\n' @ \$$(echo 'read(\"$(ROOT_DIR)scripts/utils.gp\"); classify(\"@\")' |\
	  gp -fq 2> /dev/null |\
	  tr -d '\"') \"\$$(echo -e ?@ | gp -fq | tr -d '\n')\"" >> $@

# Writes PARI/GP collection (e.g. types or member functions) to $@.
# Args:
#	$(1): quoted string, TSV header.
#	$(2): quoted string, PARI/GP meta command (starting with \ or ?).
#   $(3): unqouted string, bash command to pre-process items.
#   $(4): unquoted string, bash command to post-process items.
define get_gp_list
	@printf '$(1)\n' > $@ && \
	sed -E 's|([a-z])([0-9]+)-\1([0-9]+)|\1{\2..\3}|p' \
	 <(echo '$(2)' | gp -fq | grep : | cut -d':' -f1 | $(3) tr ',' '\n') |\
	 sort |\
	 uniq |\
	 xargs -I@ $(SHELL) -c 'echo -e \@"\n"' | xargs -n1 $(4) >> $@
endef

$(BUILD_DIR)gp_member_functions.tsv:
	$(call get_gp_list,'Member','?.',,)

$(BUILD_DIR)gp_types.tsv:
	$(call get_gp_list,'Type','\\t',tail -n+2 |,)

$(BUILD_DIR)gp_support_commands.tsv:
	$(call get_gp_list,'MetaCommand','?\\',tail -n+1 | cut -d'{' -f1 |,-I@ echo '\@')

GP_ITEMS := commands member_functions types support_commands
$(BUILD_DIR)gp_builtins.json: $(foreach item,$(GP_ITEMS),$(BUILD_DIR)gp_$(item).tsv)
	@jq -n '{"scopes": [inputs] | add}' \
	 <(cat $(BUILD_DIR)gp_commands.tsv |\
	   jq -R -f <(echo "[inputs | split(\"\t\") | {name: .[0], type: .[1]}] |\
	                    group_by(.type) |\
	                    map({ key: (.[0].type), value: [.[] | .name] }) |\
	                    from_entries")) \
	 <(cat $(BUILD_DIR)gp_member_functions.tsv |\
	   jq -R '{"entity.name.function.member": [inputs]}') \
	 <(cat $(BUILD_DIR)gp_types.tsv |\
	   jq -R '{"support.type": [inputs]}') \
	 <(cat $(BUILD_DIR)gp_support_commands.tsv |\
	   jq -R '{"support.function": [inputs]}') \
	 > $@

$(BUILD_DIR)parigp.sublime-tooltip: $(BUILD_DIR)gp_commands.tsv
	@cat $< |\
	 jq -R '[inputs | split("\t") | {(.[0]): {name: .[0], descr: .[2]}}] | add' > $@
