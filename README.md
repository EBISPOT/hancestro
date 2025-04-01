# human-ancestry-ontology

HANCESTRO
========

The Human Ancestry Ontology (HAncestro) provides a systematic description of the ancestry concepts used in the [NHGRI-EBI Catalog of published genome-wide association studies](http://www.ebi.ac.uk/gwas).  It includes a list of countries, regions and major areas (essentially continents), as well as a fairly exhaustive list of defined ancestral categories, uncategorised ancestral categories and population isolates.

The following HANCESTRO release files are provided 

* [hancestro.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro.owl) - full pre-reasoned version of HANCESTRO wtih all imports fitted into the BFO upper hierarchy
* [hancestro-full.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro-full.owl) - same as `hancestro.owl`
* [hancestro-base.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro-base.owl) - base version of HANCESTRO with only native axioms and no imports


## Contact Details ##

For questions and comments and to report any issues, please email Danielle Welter at dwelter.ontologist@gmail.com. To submit a feature request, submit a ticket via the [HANCESTRO Github issue tracker](https://github.com/EBISPOT/hancestro/issues).


## Licence ##

[Creative Commons CC-BY 4.0](http://creativecommons.org/licenses/by/4.0/)


## Citing HANCESTRO ##

Please cite *Joannella Morales, Danielle Welter, Emily H. Bowler, Maria Cerezo, Laura W. Harris, Aoife C. McMahon, Peggy Hall, Heather A. Junkins, Annalisa Milano, Emma Hastings, Cinzia Malangone, Annalisa Buniello, Tony Burdett, Paul Flicek, Helen Parkinson, Fiona Cunningham, Lucia A. Hindorff and Jacqueline A. L. MacArthur*. [**A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog**](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Genome Biology, 2018, 19:21

To reference a specific version of the ontology, please provide a link to this GITHUB repo, including the tag for the version you downloaded and the date of the download.

## Documentation & FAQ ##

For more information, take a look at [our website](https://ebispot.github.io/hancestro/), which includes an [FAQ](https://ebispot.github.io/hancestro/faq/) and a detailed explanation of our [ontology design patterns](https://ebispot.github.io/hancestro/ontology_patterns/)


##Ancestry Ontology - Release Notes ##

### Current release: v2025-02-124

Date Released: 24 February 2025

Class Count: 1282 

- **Extended geography-based and ethncity descriptors**: The latest release of HANCESTRO includes a new ethnicity term `Alaska Native (HANCESTRO:0869)` and the addition of the suffix `ancestry` to all root-level ancestry categories, even those without equivalent ethnicity descriptors.

See the [release notes](https://github.com/EBISPOT/hancestro/releases) for further details of most recent changes or check out our new [automatically generated ontology diff report](https://github.com/EBISPOT/hancestro/blob/main/src/ontology/reports/release-diff.md).



## Versions

### Stable release versions

The latest version of the ontology can always be found at:

[http://purl.obolibrary.org/obo/hancestro.owl](http://purl.obolibrary.org/obo/hancestro.owl)


### Editors' version

Editors of this ontology should use the edit version, [src/ontology/hancestro-edit.ofn](src/ontology/hancestro-edit.ofn)


## Acknowledgements

This ontology repository was created using the [ODK - Ontology Development Kit](https://github.com/INCATools/ontology-development-kit)
