Instance: PharmaceuticalAdvice
InstanceOf: CHEMEDDocumentPharmaceuticalAdvice
Title: "Pharmaceutical Advice document to change the dosage"
Description: "Example for Bundle"
Usage: #example
* id = "PharmaceuticalAdvice-ChangeDosage"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:adab8d2d-ae14-48d6-8d15-b726d6ea82c5"
* type = #document
* timestamp = "2012-02-04T14:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/Comp-ChangeDosage"
* entry[=].resource = Comp-ChangeDosage
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmuellerRecipient"
* entry[=].resource = MonikaWegmuellerRecipient
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/Obs-ChangeDosage"
* entry[=].resource = Obs-ChangeDosage
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/MedStatTriatec-ChangeDosage"
* entry[=].resource = MedStatTriatec-ChangeDosage