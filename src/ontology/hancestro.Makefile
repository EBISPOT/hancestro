## Customize Makefile settings for hancestro
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


# ----------------------------------------
# Build HANCESTRO-BFO 
# ----------------------------------------
# Use a template file to build a
#

hancestro_bfo.owl: $(SRC) ../templates/upper_level.tsv
	$(ROBOT) template --input $< --merge-before \
        --template ../templates/upper_level.tsv \
        --include-annotations true \
	    merge --input imports/merged_import.owl \
        --include-annotations true \
        reduce --reasoner ELK \
        annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) \
        --output $@

