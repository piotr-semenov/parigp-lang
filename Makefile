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
$(BUILD_DIR)parigp.YAML-tmLanguage: $(J2_TEMPLATES:.j2=) | $(BUILD_DIR)
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

$(ROOT_DIR)src/functions.YAML-tmLanguage: $(BUILD_DIR)gp_commands.tsv
	@grep entity.name.function $< |\
	 cut -f1 |\
	 jq -Rn '{"functions": [inputs]}' |\
	 j2 --format=yaml $@.j2 > $@

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
	 xargs -I@ $(SHELL) -c "printf '%s\t%s\n' @ \$$(echo 'read(\"$(ROOT_DIR)scripts/utils.gp\"); classify(\"@\")' |\
	  gp -fq 2> /dev/null |\
	  tr -d '\"')" >> $@

$(BUILD_DIR)gp_member_functions.txt:
	@sed -E 's|([a-z])([0-9]+)-\1([0-9]+)|\1{\2..\3}|p' \
	 <(echo '?.' | gp -fq | grep : | cut -d':' -f1 | tr ',' '\n') |\
	 sort |\
	 uniq |\
	 xargs -I@ bash -c 'echo -e @"\n"' | xargs -n1 > $@
