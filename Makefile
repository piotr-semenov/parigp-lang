## -----------------------------------------
## Creates the Textmate grammar for PARI/GP.
## -----------------------------------------

SHELL:=/bin/bash


help:	## Show the help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

build:	## Build Textmate grammar for PARI/GP.
build: parigp.JSON-tmLanguage
	@cp $< ./syntaxes/parigp.tmLanguage.json

clean:	## Clean the build targets.
clean:
	@rm -rf ./syntaxes/ parigp.*tmLanguage

parigp.YAML-tmLanguage: ./src
	@yq ea '. as $$item ireduce ({}; . * $$item )' ./src/*.YAML-tmLanguage > $@

parigp.JSON-tmLanguage: parigp.YAML-tmLanguage
	@yq -o=json eval $< > $@

parigp.tmLanguage: parigp.YAML-tmLanguage
	@yq \
	 --xml-attribute-prefix @ \
	 --xml-content-name '#text' \
	 --input-format yaml \
	 --output-format xml \
	 $< > $@

test:	## Test the Textmate grammar for PARI/GP.
test: syntaxes/parigp.tmLanguage.json
	@vscode-tmgrammar-test ./tests/*.gp --grammar ./syntaxes/parigp.tmLanguage.json

gp_commands.tsv:
	$(eval FUNCS := $(shell echo '\c' | gp -fq | grep -v 'RETURN'))
	@printf 'Command\tType\n' > $@
	@echo $(FUNCS) |\
	 xargs -n1 -I@ $(SHELL) -c "printf '%s\t%s\n' @ \$$(echo 'read(\"./scripts/utils.gp\"); classify(\"@\")' |\
	  gp -fq 2> /dev/null |\
	  tr -d '\"')" >> $@

gp_member_functions.txt:
	@gsed -E 's|([a-z])([0-9]+)-\1([0-9]+)|\1{\2..\3}|p' \
	 <(echo '?.' | gp -fq | grep : | cut -d':' -f1 | tr ',' '\n') |\
	 sort |\
	 uniq |\
	 xargs -n1 -I@ bash -c 'echo -e @"\n"' | xargs -n1 > $@
