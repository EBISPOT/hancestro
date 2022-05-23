# human-ancestry-ontology

HANCESTRO
========

The Human Ancestry Ontology (HAncestro) provides a systematic description of the ancestry concepts used in the [NHGRI-EBI Catalog of published genome-wide association studies](www.ebi.ac.uk/gwas).  It includes a list of countries, regions and major areas (essentially continents), as well as a fairly exhaustive list of defined ancestral categories, uncategorised ancestral categories and population isolates.

The following HANCESTRO release files are provided 

* https://github.com/EBISPOT/ancestro/blob/master/hancestro.owl
* https://github.com/EBISPOT/ancestro/blob/master/hancestro_inferred.owl - pre-inferred version of HANCESTRO
* https://github.com/EBISPOT/ancestro/blob/master/hancestro_bfo.owl - version of HANCESTRO fitted into the BFO upper hierarchy for ease of integration with other ontologies


### Contact Details ###

For questions and comments and to report any issues, please email Dani Welter at danielle.welter@uni.lu. To submit a feature request, submit a ticket via the [HANCESTRO Github issue tracker](https://github.com/EBISPOT/ancestro/issues).


### Licence ###

[Creative Commons CC-BY 4.0](http://creativecommons.org/licenses/by/4.0/)


### Citing HANCESTRO ###

Please cite *Joannella Morales, Danielle Welter, Emily H. Bowler, Maria Cerezo, Laura W. Harris, Aoife C. McMahon, Peggy Hall, Heather A. Junkins, Annalisa Milano, Emma Hastings, Cinzia Malangone, Annalisa Buniello, Tony Burdett, Paul Flicek, Helen Parkinson, Fiona Cunningham, Lucia A. Hindorff and Jacqueline A. L. MacArthur*. [**A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog**](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Genome Biology, 2018, 19:21

To reference a specific version of the ontology, please provide a link to this GITHUB repo, including the tag for the version you downloaded and the date of the download.

### FAQ ###

Please see our [FAQ](/faq.md) for some more information.


### Ancestry Ontology - Release Notes ###

#### Current release: 2.6

Date Released: 12 May 2022

Class Count: 583 

- Removal of an extraneous import of `GEO:000000374`
- Replacement of `createdBy` by `dcterms:creator`
- Addition of `LICENSE` file

See the [release notes](https://github.com/EBISPOT/ancestro/releases) for details of most recent changes.


Please note that as of v2.3 of the ontology, all identifiers have changed for ANCESTRO to HANCESTRO.


### Notice of release ###

HANCESTRO v2.0 reflects the information published in our recent paper [A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2).


## Versions

### Stable release versions

The latest version of the ontology can always be found at:

http://purl.obolibrary.org/obo/hancestro.owl


### Editors' version

Editors of this ontology should use the edit version, [src/ontology/hancestro-edit.owl](src/ontology/hancestro-edit.owl)

## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/EBISPOT/ancestro/issues) to request new terms/classes or report errors or specific concerns related to the ontology.

## Acknowledgements

This ontology repository was created using the [ontology starter kit](https://github.com/INCATools/ontology-starter-kit)
