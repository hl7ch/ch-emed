Instance: 2-7-Composition
InstanceOf: CHEMEDCompositionMedicationCard
Title: "2-7 Composition for Medication Card document"
Description: "Example for Composition"
Usage: #example
* id = "2-7-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6b6ed376-a7da-44cb-92d1-e75ce1ae73b0"
* status = #final
* type.coding[0] = $loinc#56445-0 "Medication summary Document"
* type.coding[+] = $sct#736378000 "Medication management plan (record artifact)"
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:05:00+01:00"
* author.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #generated
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><span id=\"co1\">\r\n                  Kommentar zu Medication Treatment\r\n        </span></div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n            Representation of the original view:\r\n        <img src=\"2-7-pdf\"/></div>"
* section[originalRepresentation].entry.reference = "Binary/2-7-pdf"

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of Medication use Narrative"
* section[card].entry[0].reference = "MedicationStatement/2-7-MedStatBeloczok"
* section[card].entry[+].reference = "MedicationStatement/2-7-MedStatNorvasc"

