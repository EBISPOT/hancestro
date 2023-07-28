# human-ancestry-ontology-faq

HANCESTRO FAQ
========

## How should I cite HANCESTRO? ##

Please cite *Joannella Morales, Danielle Welter, Emily H. Bowler, Maria Cerezo, Laura W. Harris, Aoife C. McMahon, Peggy Hall, Heather A. Junkins, Annalisa Milano, Emma Hastings, Cinzia Malangone, Annalisa Buniello, Tony Burdett, Paul Flicek, Helen Parkinson, Fiona Cunningham, Lucia A. Hindorff and Jacqueline A. L. MacArthur*. [**A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog**](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Genome Biology, 2018, 19:21

To reference a specific version of the ontology, please provide a link to this GITHUB repo, including the tag for the version you downloaded and the date of the download.


## Is HANCESTRO actively maintained? ##

Yes, HANCESTRO is being actively maintained. 


## How often is HANCESTRO released? ##

HANCESTRO is released whenever new terms have been added, although generally no more than once a month.


## How can I request new terms? ##

Please use our [Github tracker](https://github.com/EBISPOT/hancestro/issues) to request new terms. Please provide as much information as possible, including
- label (name) of the new term
- definition
- for new ancestry groups, please provide links to at least 2 scientific publications referencing and describing the ancestry group in question
- the preferred parent term


## How should I use HANCESTRO terms to annotate my data? ##

HANCESTRO terms can be used like any other ontology terms to annotate and map ancestry and country information in data records. Most major ancestral groups are covered in HANCESTRO and new terms can be requested as described above. 

### Complex and admixed ancestries ###

For complex ancestral backgrounds that do not fit any individual ancestral groups but rather represent a novel admixture of the component groups, we recommend using multiple terms to accurately describe the different ancestry groups, in combination with the term `admixed ancestry` (HANCESTRO:0306). Some admixed ancestral groups, such as Hispanic-Latin American are well-described and are therefore captured in a single HANCESTRO term, but it would not be possible, nor appropriate, to explicitly describe every possible combination of admixture.


## What's the difference between ancestry and ethnicity? ##

The concepts of ancestry, ethnicity and race are often used interchangeably and there are sensitivities surrounding these topics. Here, we refer to ancestry for the purpose of describing the genetic background of individuals or populations, while ethnicity refers more to a socio-cultural context. As per [Table 2 of Morales et al.](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2/tables/2), ancestry of participants in genomic studies should ideally by confirmed using genomic methods such as principle component analysis to confirm self-reported ancestries.


## Why should I use HANCESTRO rather than NCIt or another ontology? ##

The ancestry groups in HANCESTRO have been carefully defined in a single hierarchy based on available population genomic information, to aid in the annotation and classification of ancestry information, particularly but not exclusively, in genomic studies. In NCIt, ancestry-related concepts are located under different parent terms, in the wider hierarchy of `Population Group` (NCIT:C17005), which can complicate querying and annotation restrictions. The majority of ancestry-related concepts are also grouped under the parent term `Race` (NCIT:C17049), which not only as a concept carries negative cultural associations but also in this particular case has a definition that is not exclusively limited to human subjects. It would therefore be preferable to annotated human data with clearly human-specific terminology.

NCIt also does not distinguish categories such as uncategorised populations (populations for which specific ancestry information is known but that do no fall into any of the defined wider categories such African, Asian or European), undefined ancestry populations (populations that are too diverse or which insufficient information is available to allocate them to one of the wider categories) and genetically isolated or `founder` populations (populations with increased genetic homogeneity and reduced genetic variation due to cultural or geographic isolation).

HANCESTRO terms are reused in several other ontologies, including EFO, FOODON and GENEPIO. The ontology is used to annotate information in projects and catalogues like the [GWAS Catalog](https://www.ebi.ac.uk/gwas/), the [ENCODE project](https://www.encodeproject.org/) and the [Human Cell Atlas](https://data.humancellatlas.org/).



