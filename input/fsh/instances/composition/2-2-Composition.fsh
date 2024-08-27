Instance: 2-2-Composition
InstanceOf: CHEMEDCompositionPharmaceuticalAdvice
Title: "2-2 Composition for Pharmaceutical Advice document"
Description: "Example for Composition"
Usage: #example
* id = "2-2-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e68055ce-1540-4b26-b72d-d9c3e595416a"
* status = #final
* type.coding[0] = $loinc#61356-2 "Medication pharmaceutical advice.extended Document"
* type.coding[+] = $sct#419891008 "Record artifact (record artifact)" 
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Kommentar zur Medikation"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[pharmaceuticalAdvice].title = "Hinweise zur Medikation"
* section[pharmaceuticalAdvice].code = $loinc#61357-0 "Medication pharmaceutical advice.brief Document"
* section[pharmaceuticalAdvice].text.status = #generated
* section[pharmaceuticalAdvice].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><th>Präpartename</th><th>Wirkstoffname</th><th>Galenische Form</th><th>Dosis pro Einheit</th><th>Dos.Morgen</th><th>Dos.Mittag</th><th>Dos.Abend</th><th>Dos.Nacht</th><th>Verabreichungsweg</th><th>Anwendungsdauer</th><th>Behandlungsgrund</th><th>Kommentar</th></tr></thead><tbody><tr id=\"padv.1\"><td id=\"padv.1.brandedmedication\">Triatec</td><td id=\"padv.1.ingredient\">Ramipril</td><td id=\"padv.1.packageform\">Tbl</td><td id=\"padv.1.dosequantity\">2.5 mg</td><td id=\"padv.1.dosagemorning\">0.5</td><td id=\"padv.1.dosagelunch\">0</td><td id=\"padv.1.dosageevening\">0</td><td id=\"padv.1.dosagenight\">0</td><td id=\"padv.1.routecode\">oral</td><td id=\"padv.1.datefromto\"/><td id=\"padv.1.reason\">Bluthochdruck</td><td id=\"padv.1.note\">Abgesetzt aufgrund UAW trockener Husten</td></tr></tbody></table></div>"
* section[pharmaceuticalAdvice].entry.reference = "Observation/2-2-ObsPharmaceuticalAdvice"