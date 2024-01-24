PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX dc: <http://purl.org/dc/elements/1.1/>
PREFIX owl: <http://www.w3.org/2002/07/owl#>

DELETE {
    ?term rdfs:subClassOf ?_x .
    ?_x a owl:Restriction .
    ?_x owl:onProperty ?prop .
    ?_x owl:allValuesFrom ?hancestro .
    ?_y ?p ?v . 
}
WHERE {
    ?term a owl:Class .
    ?term rdfs:subClassOf ?_x .
    ?_x a owl:Restriction .
    ?_x owl:onProperty <http://purl.obolibrary.org/obo/RO_0001025> .
    ?_x owl:allValuesFrom ?hancestro .
    ?_y a owl:Axiom;
        owl:annotatedSource ?term;
        owl:annotatedProperty rdfs:subClassOf;
        owl:annotatedTarget ?_x;
        ?p ?v .
    FILTER(isBlank(?_y))
    FILTER(isBlank(?_x))
    FILTER(isIRI(?term) && (STRSTARTS(str(?term), "http://dbpedia.org/resource/")))
    FILTER(isIRI(?hancestro) && (STRSTARTS(str(?hancestro), "http://purl.obolibrary.org/obo/HANCESTRO_")))
}