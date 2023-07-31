# human-ancestry-ontology

HANCESTRO
========

The Human Ancestry Ontology (HAncestro) provides a systematic description of the ancestry concepts used in the [NHGRI-EBI Catalog of published genome-wide association studies](http://www.ebi.ac.uk/gwas).  It includes a list of countries, regions and major areas (essentially continents), as well as a fairly exhaustive list of defined ancestral categories, uncategorised ancestral categories and population isolates.

The following HANCESTRO release files are provided 

* [hancestro.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro.owl) - full pre-reasoned version of HANCESTRO wtih all imports fitted into the BFO upper hierarchy
* [hancestro_full.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro_full.owl) - same as `hancestro.owl`
* [hancestro_base.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro_base.owl) - base version of HANCESTRO with only native axioms and no imports


## Contact Details ##

For questions and comments and to report any issues, please email Danielle Welter at dwelter.ontologist@gmail.com. To submit a feature request, submit a ticket via the [HANCESTRO Github issue tracker](https://github.com/EBISPOT/hancestro/issues).


## Licence ##

[Creative Commons CC-BY 4.0](http://creativecommons.org/licenses/by/4.0/)


## Citing HANCESTRO ##

Please cite *Joannella Morales, Danielle Welter, Emily H. Bowler, Maria Cerezo, Laura W. Harris, Aoife C. McMahon, Peggy Hall, Heather A. Junkins, Annalisa Milano, Emma Hastings, Cinzia Malangone, Annalisa Buniello, Tony Burdett, Paul Flicek, Helen Parkinson, Fiona Cunningham, Lucia A. Hindorff and Jacqueline A. L. MacArthur*. [**A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog**](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Genome Biology, 2018, 19:21

To reference a specific version of the ontology, please provide a link to this GITHUB repo, including the tag for the version you downloaded and the date of the download.

## Documentation & FAQ ##

For more information, take a look at [our website](https://ebispot.github.io/hancestro/), which includes an [FAQ](https://ebispot.github.io/hancestro/faq/).


##Ancestry Ontology - Release Notes ##

### Current release: 3.0

Date Released: 31 July 2023

Class Count: 612 

- Updated the HANCESTRO repo to the latest version of the [ODK](https://github.com/INCATools/ontology-development-kit)
- Changed release artefacts:
	- `hancestro.owl` > `hancestro-base.owl`
	- `hancestro_bfo.owl` > `hancestro.owl` (and `hancestro-full.owl`
	- `hancestr_inferred.owl` > retired
- Changed ontology repo name from `ancestro` to `hancestro`
- Changed primary branch name from `master` to `main` 
- Changed label for `HANCESTRO:0015` from `Greater Middle Eastern (Middle Eastern, North African or Persian)` to `Greater Middle Eastern (Middle Eastern or North African or Persian)`(as per [request #36](https://github.com/EBISPOT/hancestro/issues/36))

See the [release notes](https://github.com/EBISPOT/hancestro/releases) for details of most recent changes.


*Please note that as of v2.3 of the ontology, all identifiers have changed for ANCESTRO to HANCESTRO.*




## Versions

### Stable release versions

The latest version of the ontology can always be found at:

[http://purl.obolibrary.org/obo/hancestro.owl](http://purl.obolibrary.org/obo/hancestro.owl)


### Editors' version

Editors of this ontology should use the edit version, [src/ontology/hancestro-edit.ofn](src/ontology/hancestro-edit.ofn)


## Acknowledgements

This ontology repository was created using the [ODK - Ontology Development Kit](https://github.com/INCATools/ontology-development-kit)
