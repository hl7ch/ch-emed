Instance: 2-6-Composition
InstanceOf: CHEMEDCompositionMedicationPrescription
Title: "2-6 Composition for Medication Prescription document"
Description: "Example for Composition"
Usage: #example
* id = "2-6-Composition"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d41d72ba-2100-11e6-b67b-9e71128cae77"
* status = #final
* type.coding[0] = $loinc#57833-6 "Prescription for medication" // patternCC
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)" // invariant
* subject.reference = "Patient/MonikaWegmueller"
* date = "2012-02-04T14:00:00+01:00"
* author[person].reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* title = "Rezept"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #generated
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><span id=\"co1\">\r\n\t\t\t\t\t\tKommentar zu Medication Prescription\r\n        </span></div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/2-6-pdf\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/2-6-pdf"

* section[prescription].title = "Arzneimittelverordnung"
* section[prescription].code = $loinc#57828-6 "PRESCRIPTIONS"
* section[prescription].entry.reference = "MedicationRequest/2-6-MedReqNorvasc"