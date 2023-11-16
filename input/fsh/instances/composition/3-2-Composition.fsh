Instance: 3-2-Composition
InstanceOf: CHEMEDCompositionMedicationDispense
Title: "3-2 Composition for Medication Dispense document"
Description: "Example for Composition"
Usage: #example
* id = "3-2-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8ef0d745-e218-4636-abac-ea842ca6a421"
* status = #final
* type.coding[0] = $sct#82291000195104 "Medication dispense document (record artifact)"
* type.coding[=].version = "http://snomed.info/sct/2011000195101"
* type.coding[+] = $loinc#60593-1 "Medication dispensed.extended Document"
* subject = Reference(MaxMoser)
* date = "2020-02-03T17:00:00+01:00"
* author[person] = Reference(PriskaHuberAtRettungsdienst)
* title = "Abgabe"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[dispense].title = "Abgabe eines Medikaments"
* section[dispense].code = $loinc#60590-7 "Medication dispensed.brief Document"
* section[dispense].text.status = #generated
* section[dispense].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><span id=\"co1\">\r\n Anwendung: 0.05 mg Fentanyl, 14:32, 03.02.2020 \r\n </span></div>"
* section[dispense].entry = Reference(3-2-MedAdminFentanyl)