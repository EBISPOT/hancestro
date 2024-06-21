# HANCESTRO Ontology Documentation

Welcome to the HANCESTRO documentation!

The Human Ancestry Ontology (HAncestro) provides a systematic description of the ancestry concepts used in the [NHGRI-EBI Catalog of published genome-wide association studies](http://www.ebi.ac.uk/gwas).  It includes a list of countries, regions and major areas (essentially continents), as well as a fairly exhaustive list of defined ancestral categories, uncategorised ancestral categories and population isolates.

The following HANCESTRO release files are provided 

* [hancestro.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro.owl) - full pre-reasoned version of HANCESTRO wtih all imports fitted into the BFO upper hierarchy
* [hancestro-full.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro-full.owl) - same as `hancestro.owl`
* [hancestro-base.owl](https://github.com/EBISPOT/hancestro/blob/main/hancestro-base.owl) - base version of HANCESTRO with only native axioms and no imports

Please see our [FAQ](https://ebispot.github.io/hancestro/faq/). for some more information.

You can find descriptions of the standard ontology engineering workflows [here](odk-workflows/index.md).


## What's the difference between ancestry and ethnicity?

Ancestry generally refers to an individual's objectivily verifiable genetic background, which can be clustered with reference populations from a certain region. Ethnicity on the other hand refers to an individual's self-identified cultural background. Most individuals have a strong alignment between their ancestry and ethnicity but it is possible for an individual to associate with an ethnic background that is not aligned with their genetic ancestry, for example due to gaps or misrepresentations in their family history.

For more information, see [Mersha & Abebe, 2015](https://humgenomics.biomedcentral.com/articles/10.1186/s40246-014-0023-x) or [https://health.clevelandclinic.org/how-your-ancestry-and-ethnicity-affect-your-health/](https://health.clevelandclinic.org/how-your-ancestry-and-ethnicity-affect-your-health/)

Ancestry categories in the Human Ancestry Ontology refer to genetic ancestry and have been defined in this context. They may also be used to annotate self-reported ethnicity data but with the clear caveat that annotation does not guarantee the accuracy of related genetic information. 

As of release v2024-04-25, we provide a new `ethnicity category (HANCESTRO:0601)` classification that groups together all terms that can be used to describe self-reported ethnicities. We also have a grouping called `geography-based population category (HANCESTRO:0602)`, for all population descriptors related to geography.


## HANCESTRO root level concepts

### Ancestry category

The key purpose of HANCESTRO is the capture of the primary ancestry categories defined in [Morales et al, 2018](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Where additional genetic information for a smaller population category (eg by country) is available to assign it to one of the defined ancestry categories, this is also represented in the ontology hierarchy. However a lot of country-based categories are either uncategorised, ie the available ancestry information does not fall into one of the defined categories or they are undefined, ie insufficient information is available to allocate this population to a specific ancestral group.

The primary asserted relationship between ancestry categories and countries is via the `isDemonymOf` relationship, which identifies that individuals may be residents or natives of a particular place but makes no assertion regarding their genetic background.

In exceptional cases, ancestry categories are associated with countries via the `hasCountryOfOrigin` relationship. This is much more formal definition generally reserved for genetically isolated populations where objectively verifiable information is available to relate individuals from this population to a small geographic area within a certain country.

### Ethnicity category

Many population descriptors do not fully match defined ancestry populations although individuals from these populations may show some levels of genetic similarity with a given ancestry category. Ethnicity descriptors are more likely to describe populations groups with a similar cultural, religious, tribal, geographic or other social background. This includes terms such as `Jewish Israeli`, `Punjabi Sikh` or `Hispanic`. 

In order to make HANCESTRO more broadly useful for the annotation of both self-reported information, usually referred to as `self-reported ethnicity` as well as genetic ancestry inferred from the similarity of individuals' sequence data to reference populations, we created a new `ethicity category (HANCESTRO:0601)`. This is a grouping class for all terms in HANCESTRO used to describe populations for which no genetic reference population is available and that are also not geographic descriptors. 


### Geography-based population category

One common way to describing individuals is by reference to the location where they were born, where they live or where their family origniated, such as [national or regional demonyms](https://en.wikipedia.org/wiki/Demonym). Demonyms are used to designate all people in relation to a particular place, regardless of ethnic, linguistic, religious or other cultural considerations.

In order to make it easier for HANCESTRO users to identify all geographical descriptors, we implemented a new `geography-based population category (HANCESTRO:0602)` that groups all country and regional demonyms.   


**NOTE**

Please note that we make every effort to ensure that our ethnicity and geograph-based population descriptors groupings are non-overlapping, i.e. each term should only appear in one list. For this reason, you may sometimes find a geographic descriptor in the ethnicities list, in particular if that descriptor has child terms that are themselves not geographic descriptors. 


### Ancestry status

This class represents the general characterisation of the ancestry of a population or individual. Ancestry status can either be admixed or genetically isolated.


### Continent

Formally defined major geographic area.


### Country

Defined geographic area, generally corresponding to an independent state or nation.

### Region

Convenience grouping of geographic areas larger than countries but smaller than continents. Regions may not have formal geographic definitions.

## African populations in HANCESTRO

As of release v2023-06-21, HANCESTRO defers to the [African Population Ontology (AfPO)](https://github.com/h3abionet/afpo), produced as part of the [H3ABioNet project](https://www.h3abionet.org/), on all terminology relating to African populations. We import all population terms created by AfPO and include them in our hierarchy underneath our continental ancestry term `African (HANCESTRO:0010)`. Existing HANCESTRO terms such as `Masaai (HANCESTRO:0593)` or `Somali (HANCESTRO:0518)` have been deprecated in favour of their AfPO equivalents. AfPO terms can easily be identified by their AfPO identifiers (`AfPO:0000000` or `http://purl.obolibrary.org/obo/AfPO_0000000`). For any queries, concerns, bug reports, change or new term requests about African populations, please raise an issue on the AfPO [Github Tracker](https://github.com/h3abionet/afpo/issues) directly.



