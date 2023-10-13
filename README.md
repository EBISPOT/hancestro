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

For more information, take a look at [our website](https://ebispot.github.io/hancestro/), which includes an [FAQ](https://ebispot.github.io/hancestro/faq/).


##Ancestry Ontology - Release Notes ##

### Current release: v2023-10-13

Date Released: 13 October 2023

Class Count: 612 

- Updated the HANCESTRO versioning strategy to bring it in line with ODK best practice (as per [request #44](https://github.com/EBISPOT/hancestro/issues/44)). HANCESTRO versions are now date-based rather than using semantic versioning.

- Repo clean-up, including fixing of broken links

See the [release notes](https://github.com/EBISPOT/hancestro/releases) for details of most recent changes.



## Versions

### Stable release versions

The latest version of the ontology can always be found at:

[http://purl.obolibrary.org/obo/hancestro.owl](http://purl.obolibrary.org/obo/hancestro.owl)


### Editors' version

Editors of this ontology should use the edit version, [src/ontology/hancestro-edit.ofn](src/ontology/hancestro-edit.ofn)


## Acknowledgements

This ontology repository was created using the [ODK - Ontology Development Kit](https://github.com/INCATools/ontology-development-kit)
