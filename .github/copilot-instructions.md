# HANCESTRO Project Guide

This includes instructions for editing the HANCESTRO ontology. 

## Project Layout
- Main development file is `src/ontology/hancestro-edit.ofn` (in RDF/XML Functional syntax)
- ODK and ontology documentation can be found in `/docs/`

## Querying ontology

- Use grep/rg to find terms, but be aware that in RDF/XML files like hancestro-edit.ofn, axioms may span multiple lines.
    - `grep -i Kosraean src/ontology/hancestro-edit.ofn` - all axioms that mention ATAC-seq
    - `grep '<rdfs:label.*Kosraean' src/ontology/hancestro-edit.ofn` - all label axioms that mention ATAC-seq
- All mentions of an ID
    - `obo-grep.pl -r 'HANCESTRO_:_0571' src/ontology/hancestro-edit.ofn`
- Only search over `src/ontology/hancestro-edit.ofn`
- DO NOT bother doing your own greps over the file, or looking for other files, unless otherwise asked, you will just waste time.
- ONLY use the methods above for searching the ontology

## Before making edits
- Read the request carefully and make a plan, especially if there is nuance
- If related issues are mentioned read them: `gh issue view GITHUB-ISSUE-NUMBER`
- Try identify if there are PMID or doi either in the title or in the body of the issue
- if a PMID or doi is mentioned in the issue, ALWAYS try and read it
- ALWAYS check proposed parent terms for consistency

## Editors guide
- When you are finished editing the hancestro-edit.ofn file, please normalize by running:

```bash
cd src/ontology #If you are not in the ontology folder
make normalize_src
```

- For any edition that does not involve obsoleting terms, there is no need to add a 'term tracker item' pointing to the GitHub issue

## OBO Guidelines
- Term ID format: HANCESTRO_NNNNNNN (variable digit number)
- Handling New Term Requests (NTRs):
  - New terms start  HANCESTRO_2xxxxxx (when you add new terms, ID will always have 7 digits)
  - Do `grep HANCESTRO_2 src/ontology/hancestro-edit.ofn` to check for clashes
- Each term requires: id, name, definition with references
- Never guess HANCESTRO IDs, or ontology term IDs, use search tools above to determine actual term
- Never guess PMIDs for references, do a web search if needed
- Use standard relationship types: is_a, part_of, realizes, etc.
- Follow existing term patterns for consistency

## Publications
- Run the command `aurelian fulltext <PMID:nnn>` to fetch full text for a publication. A doi or URL can also be used
- You should cite publications appropriately, e.g. `def: "...." [PMID:nnnn, doi:mmmm]

## GitHub Contribution Process
- Most requests from users should follow one of two patterns:
    - You are not confident how to proceed, in which case end with asking a clarifying question (via `gh`)
    - you are confident how to proceed, you make changes, commit on a branch, and open a PR for the user to review
- Check existing terms before adding new ones
- For new terms: provide name, definition, place in hierarchy, and references
- Include PMIDs for all assertions
- Follow naming conventions from parent terms
- Always commit in a branch, e.g. issue-NNN (the name of the branche should always start with issue and the number of the issue)
- Don't commit the tools directory or anything from it
- If there is an existing PR which you started then checkout that branch and continue, rather than starting a new PR (unless you explicitly want to abandon the original PR, e.g. it was on completely the wrong tracks)
- Always make clear detailed commit messages, saying what you did and why
- Always sign your commits `@Copilot`
- Create PRs using `gh pr create ...`
- File PRs with clear descriptions, and sign your PR

## Handling GitHub issues and requests
- Use `gh` to read and write issues/PRs
- Sign all commits and PRs as `@Copilot`

## TROUBLESHOOTING

- If your ofn file has syntax errors, you can use `robot convert -vvv` to see full trace
- Use `robot reason` to validate

## Other metadata

- All terms should have definitions, with at least one definition xref, ideally a PMID

## Relationships

**All terms** must have at least one `is_a` (SubClassOf to a named class). This can be explicit or implicit via a logical definition.  
- Many terms in this ontology have `part_of` relationships to UBERON terms where applicable.  

### Additional domain-specific expectations 
- **Disease terms** should have a `has_disease_location` relationship to an appropriate anatomical entity.  
  - This relationship may be inherited from a parent or ancestor term; explicit addition is not required if inherited.  
  - If the issue is not providing this relationship, **make a comment in the PR**.  
- **Measurement terms** should have an `is_about` relationship to the entity or process being measured  
  (e.g., `sleep measurement` → `is_about` some `sleep`).  
  - If the issue is not providing this relationship, **make a comment in the PR**. 

## Term example

```
    <!-- http://purl.obolibrary.org/obo/HANCESTRO_0571 -->

    <owl:Class rdf:about="http://purl.obolibrary.org/obo/HANCESTRO_0571">
        <rdfs:subClassOf rdf:resource="http://purl.obolibrary.org/obo/HANCESTRO_0610"/>
        <rdfs:subClassOf>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://purl.obolibrary.org/obo/RO_0000086"/>
                <owl:someValuesFrom rdf:resource="http://purl.obolibrary.org/obo/HANCESTRO_0599"/>
            </owl:Restriction>
        </rdfs:subClassOf>
        <obo:IAO_0000115>Individuals who self-identify or are reported by authors as belonging to the indigenous peoples who have historically lived on the Interior Plains (the Great Plains and Canadian Prairies) of North America</obo:IAO_0000115>
        <oboInOwl:hasExactSynonym>Plains American Indian</oboInOwl:hasExactSynonym>
        <rdfs:label>Plains Indians</rdfs:label>
    </owl:Class>
```

The reasoner can find the most specific `is_a`, so it's OK to leave this off.

