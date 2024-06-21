# human-ancestry-ontology-design-patterns

HANCESTRO design patterns
========

## HANCESTRO native object properties

HANCESTRO defines 4 native object properties:

- hasAncestryStatus (HANCESTRO:0301)
- hasCountryOfOrigin (HANCESTRO:0308)
- isDemonymOf (HANCESTRO:0330)
- hasDemonym (HANCESTRO:0329)

In addition, it uses several imported properties:

- has quality (RO:0000086)
- located in (RO:0001025)
- part of (BFO:0000050)


## Defined classes

### Ancestry status

`ancestry status` is defined as being equivalent to `genetically isolated ancestry or admixed ancestry`. It is a grouping class for population genetics qualifiers.


### Ethnicity category

`ethnicity category`is defined as being equivalent to `has quality some ethnicity descriptor`. This means that any subclass of `ethnicity category` has an inherent quality of being a descriptor of type ethnicity.

### Geography-based population category

`geography-based population category`is defined as being equivalent to `(isDemonymOf some Country) or (has quality some geographic descriptor)`. This means that any subclass of `geography-based population category` is either directly identified as a denomym of a country identified in the ontology or it has an inherent quality of being a descriptor of type geography.

### Exclusions from ethnicity and geography descriptors

Please note that while continental- and regional-level ancestry descriptors such as `European` or `East Asian` qualify as geographic descriptors, these have been excluded from this classifcation due to the strict inheritance rules of ontology classification. In an ontology, any property that applies to a parent class also applies to all its children, so declaring `European` a geographic descriptor would automatically classify any of its children as geographic descriptors. The same applies to any class with many subclasses that would qualify as an ethnicity descriptor. 

We have therefore made the decision to apply the ethnicity and geographic descriptor qualities only to classes which have no or very few subclasses, and in the latter case only if the classification is universally applicable to the subclasses as well. As a result, some geographic labels such as `Malagasy` are not found among the geographic descriptors.

Additionally, many descriptors may be applicable as both a geographic and an ethnicity descriptor. However, in line with the recommendations of the [NASEM report on population descriptors](https://nap.nationalacademies.org/catalog/26902/using-population-descriptors-in-genetics-and-genomics-research-a-new), we decided to avoid mixing descriptors and have therefore excluded geographic descriptors from the ethnicity classification. Any inconsistencies in applying this rule are the result of human error and we welcome feedback from our users if you spot any errors.


## Other design patterns

### Country-region links

Where possible, we create a link between each country and the sub-continental region it is part of using the pattern

```located in only <region>```

Where a country spans multiple regions, we aim to list all of them. The reason for this axiomatisation is to enable queries by region, such as "Give me all countries located in Eastern Asia".

We acknowledge that the use of `only` in OWL axioms is not optimal and are actively looking into alternative design patterns. 


### Region-continent links

For similar reasons as for the country-region links, we also create a link between each the sub-continental region and the continent it is part of using the pattern

```part of only <continent>```


We again acknowledge that the use of `only` in OWL axioms is not optimal and are actively looking into alternative design patterns. 

### Country-demonym links

As mentioned in the section on defined classes, we create links between geographic population descriptors for countries and the country they are associated with using the pattern

```isDemonymOf some <country>```


### Country of origin

In exceptional cases, ancestry categories are associated with countries via the `hasCountryOfOrigin` relationship. This is a fairly formal definition generally reserved for genetically isolated populations where objectively verifiable information is available to relate individuals from this population to a small geographic area within a certain country. We do not use 
