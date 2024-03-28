## Customize Makefile settings for hancestro
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


# ----------------------------------------
# Build HANCESTRO-BFO 
# ----------------------------------------
# Use a template file to build a
#

# Overwritting the full release to add the upper level axioms
$(ONT)-full.owl: $(EDIT_PREPROCESSED) $(OTHER_SRC) $(IMPORT_FILES)
	$(ROBOT_RELEASE_IMPORT_MODE) \
        template --merge-after --template ../templates/upper_level.tsv --include-annotations true \
		reason --reasoner HERMIT --equivalent-classes-allowed asserted-only --exclude-tautologies structural \
		relax \
		reduce --reasoner ELK \
		repair \
		$(SHARED_ROBOT_COMMANDS) annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@
		

imports/obi_import.owl: $(MIRRORDIR)/obi.owl $(IMPORTDIR)/obi_terms_combined.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
        extract -T $(IMPORTDIR)/obi_terms_combined.txt --copy-ontology-annotations true --force true --method MIREOT --upper-term "obo:BFO_0000040" --lower-term "obo:OBI_0000181" --lower-term "obo:OBI_0000245" \
        query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
        $(ANNOTATE_CONVERT_FILE); fi
        

$(IMPORTDIR)/foodon_import.owl: $(MIRRORDIR)/foodon.owl $(IMPORTDIR)/foodon_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/foodon_terms.txt --force true --copy-ontology-annotations true --individuals include --method BOT \
		filter $(patsubst %, --term %, $(ANNOTATION_PROPERTIES)) -T $(IMPORTDIR)/foodon_terms.txt --select "self descendants" \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi


$(IMPORTDIR)/afpo_import.owl: $(MIRRORDIR)/afpo.owl $(IMPORTDIR)/afpo_terms.txt
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/afpo_terms.txt --force true --copy-ontology-annotations true --individuals include --method STAR \
		filter $(patsubst %, --term %, $(ANNOTATION_PROPERTIES)) -T $(IMPORTDIR)/afpo_terms.txt --select "self descendants" \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi
		
