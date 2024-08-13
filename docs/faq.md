# HANCESTRO FAQ

## How should I cite HANCESTRO? 

Please cite *Joannella Morales, Danielle Welter, Emily H. Bowler, Maria Cerezo, Laura W. Harris, Aoife C. McMahon, Peggy Hall, Heather A. Junkins, Annalisa Milano, Emma Hastings, Cinzia Malangone, Annalisa Buniello, Tony Burdett, Paul Flicek, Helen Parkinson, Fiona Cunningham, Lucia A. Hindorff and Jacqueline A. L. MacArthur*. [**A standardized framework for representation of ancestry data in genomics studies, with application to the NHGRI-EBI GWAS Catalog**](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2). Genome Biology, 2018, 19:21

To reference a specific version of the ontology, please provide a link to this GITHUB repo, including the tag for the version you downloaded and the date of the download.


## Is HANCESTRO actively maintained? 

Yes, HANCESTRO is actively maintained. 


## How often is HANCESTRO released? 

HANCESTRO is released whenever new terms have been added, although generally no more than once a month.


## How can I request new terms? 

Please use our [Github tracker](https://github.com/EBISPOT/hancestro/issues) to request new terms. Please provide as much information as possible, including
- label (name) of the new term
- definition
- for new ancestry groups, please provide links to at least 2 scientific publications referencing and describing the ancestry group in question
- the preferred parent term


## How should I use HANCESTRO terms to annotate my data? 

HANCESTRO terms can be used like any other ontology terms to annotate and map ancestry and country information in data records. Most major ancestral groups are covered in HANCESTRO and new terms can be requested as described above. 

### Complex and admixed ancestries 

For complex ancestral backgrounds that do not fit any individual ancestral groups but rather represent a novel admixture of the component groups, we recommend using multiple terms to accurately describe the different ancestry groups, in combination with the term `admixed ancestry` (HANCESTRO:0306). Some admixed ancestral groups, such as Hispanic-Latin American are well-described and are therefore captured in a single HANCESTRO term, but it would not be possible, nor appropriate, to explicitly describe every possible combination of admixture.


### Representing the genetic ancestry of individual samples

Where the representation of the genetic ancestry of individual samples is deemed to be relevant in the context of a study or publication, we recommend using a representation like that one in table 1. Here, each sample is represented as a percentage of overlap with its component major ancestry populations (`European_Genetic_Ancestry, African_Genetic_Ancestry, American_Indigenous_Genetic_Ancestry`), then allocated to a continental-level ancestry category (`Ancestry_category`). Ancestry sub- and sub-sub-categories from HANCESTRO can be added based on available metadata for the samples (`Ancestry_sub_category, Ancestry_sub_sub_category`), e.g. in this instance, samples were known to be collected from South American indigenous populations.

Data and format kindly provided by the [LatinCells team at the Laboratory of Human Evolutionary Genomics and Populations](https://portal-cinvestav-mx.translate.goog/uga-langebio/investigacion/directorio-de-investigacion/dr-andr201s-moreno-estrada?_x_tr_sl=auto&_x_tr_tl=en&_x_tr_hl=es&_x_tr_pto=wapp) in the Advanced Genomics Unit of the Center for Research and Advanced Studies of the National Polytechnic Institute (Cinvestav) in Mexico.


| European\_Genetic\_Ancestry | African\_Genetic_Ancestry | American\_Indigenous\_Genetic_Ancestry | Ancestry\_category | Ancestry\_sub_category | Ancestry\_sub\_sub_category | sample |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | 
| 0.410633 | 0.071241 | 0.518126 | Latin American  | Mexican | Mexican | CONTROL_ |
| 0.411043 | 0.070131 | 0.518826 | Latin American  | Mexican | Mexican | CONTROL_CD |
| 0.00001 | 0.00001 | 0.99998 | Indigenous American   | Indigenous in South America  | Piapoco | LCCO0001 |
| 0.228382 | 0.017444 | 0.754175 | Indigenous American   | Indigenous in South America  | Piapoco | LCCO0004 |
| 0.00001 | 0.00001 | 0.99998 | Indigenous American   | Indigenous in South America  | Piapoco | LCCO0005 |
| 0.23886 | 0.021708 | 0.739432 | Indigenous American   | Indigenous in South America  | Piapoco | LCCO0006 |
| 0.114575 | 0.008043 | 0.877383 | Indigenous American   | Indigenous in South America  | Pastos | LCCO0023 |
| 0.047826 | 0.00001 | 0.952164 | Indigenous American   | Indigenous in South America  | Pastos | LCCO0024 |
| 0.238528 | 0.014825 | 0.746647 | Indigenous American   | Indigenous in South America  | Pastos | LCCO0044 |
| 0.472874 | 0.025367 | 0.501759 | Indigenous American   | Indigenous in South America  | Pastos | LCCO0052 |
| 0.006402 | 0.025769 | 0.967829 | Indigenous American   | Indigenous in South America  | Wayuu | LCCO0055 |
| 0.00001 | 0.00001 | 0.99998 | Indigenous American   | Indigenous in South America  | Wayuu | LCCO0061 |
| 0.0569 | 0.036398 | 0.906702 | Indigenous American   | Indigenous in North America  | Maya | LCMX0014 |
| 0.034926 | 0.005596 | 0.959479 | Indigenous American   | Indigenous in North America  | Maya | LCMX0016 |
| 0.21016 | 0.034721 | 0.755119 | Indigenous American   | Indigenous in North America  | Maya | LCMX0020 |
| 0.00001 | 0.00001 | 0.99998 | Indigenous American   | Indigenous in North America  | Maya | LCMX0021 |
| 0.201236 | 0.04455 | 0.754214 | Indigenous American   | Indigenous in North America  | Otomi | LCMX0158 |
| 0.047861 | 0.031195 | 0.920943 | Indigenous American   | Indigenous in North America  | Otomi | LCMX0159 |
| 0.071487 | 0.019162 | 0.909351 | Indigenous American   | Indigenous in North America  | Otomi | LCMX0160 |

**Table 1:** *Suggested representation of genetic ancestry of samples.*



## What do the reference populations in HANCESTRO mean?

Researchers commonly use reference populations such as those catalogued by the [International Genome Sample Resource (IGSR)](https://www.internationalgenome.org/about) to assess the genetic ancestry of their samples through ancestry principal component analysis. In many cases there is no direct alignment between these reference populations and HANCESTRO terms, which can make it difficult for researchers to correctly annotate their data, for example when submitting to a resource that uses HANCESTRO for annotations. For this reason, we decided to include the full list of populations from the IGSR in HANCESTRO and link them to our continental and sub-continental ancestry categories as well as, where possible, indicate the overlap with ethncities captured in HANCESTRO. Please note that the representation of ethnicities in HANCESTRO is an ongoing process, and overlaps with reference populations will be updated as new ethnicities are added to the ontology.

Special note on ancestry mappings for populations from the Simons Genome Diversity Project (SGDP): as discussed in [Mallick et al.](https://doi.org/10.1038/nature18964), in particular in Extended Data Figure 3: ADMIXTURE analysis, the authors carried out unsupervised ADMIXTURE analysis over the 300 SGDP individuals, with ancestral population threshold from K=2 to K=12. While the project assigned to their populations to one of 7 continental ancestry groups, these groups do not directly align with the HANCESTRO ancestry populations, in particular the populations `Central Asia and Siberia (SGDP)` and `West Eurasia (SGDP)`. We used the aforementioned Extended Data Figure 3 in combination with our existing HANCESTRO hierarchy to infer the closest HANCESTRO ancestry group for each population where a direct equivalence did not exist. We would welcome feedback from users on these inferences, in particular    

For our users' convenience, the mappings are also provided in tabular format [here](link).


## What's the difference between ancestry and ethnicity? 

The concepts of ancestry, ethnicity and race are often used interchangeably and there are sensitivities surrounding these topics. Here, we refer to ancestry for the purpose of describing the genetic background of individuals or populations, while ethnicity refers more to a socio-cultural context. As per [Table 2 of Morales et al.](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1396-2/tables/2), ancestry of participants in genomic studies should ideally by confirmed using genomic methods such as principle component analysis to confirm self-reported ancestries.

As of release v2024-04-25, we provide a new `ethnicity category (HANCESTRO:0601)` classification that groups together all terms that can be used to describe self-reported ethnicities. We also have a grouping called `geography-based population category (HANCESTRO:0602)`, for all population descriptors related to geography.


## Why should I use HANCESTRO rather than NCIt or another ontology? 

The ancestry groups in HANCESTRO have been carefully defined in a single hierarchy based on available population genomic information, to aid in the annotation and classification of ancestry information, particularly but not exclusively, in genomic studies. In NCIt, ancestry-related concepts are located under different parent terms, in the wider hierarchy of `Population Group` (NCIT:C17005), which can complicate querying and annotation restrictions. The majority of ancestry-related concepts are also grouped under the parent term `Race` (NCIT:C17049), which not only as a concept carries negative cultural associations but also in this particular case has a definition that is not exclusively limited to human subjects. It would therefore be preferable to annotated human data with clearly human-specific terminology.

NCIt also does not distinguish categories such as uncategorised populations (populations for which specific ancestry information is known but that do no fall into any of the defined wider categories such African, Asian or European), undefined ancestry populations (populations that are too diverse or which insufficient information is available to allocate them to one of the wider categories) and genetically isolated or `founder` populations (populations with increased genetic homogeneity and reduced genetic variation due to cultural or geographic isolation).

HANCESTRO terms are reused in several other ontologies, including EFO, FOODON and GENEPIO. The ontology is used to annotate information in projects and catalogues like the [GWAS Catalog](https://www.ebi.ac.uk/gwas/), the [ENCODE project](https://www.encodeproject.org/) and the [Human Cell Atlas](https://data.humancellatlas.org/).





