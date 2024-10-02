Instance: 2-5-MedicationTreatmentPlan
InstanceOf: CHEMEDDocumentMedicationTreatmentPlan
Title: "2-5 Medication Treatment Plan document"
Description: "Example for Bundle - Use case step 2-5: Decistion for Norvasc as new medication treatment for Monika Wegmüller."
Usage: #example
* id = "2-5-MedicationTreatmentPlan"
* meta.lastUpdated = "2020-03-09T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5712fffe-20c6-11e6-b67b-9e71128cae77"
* type = #document
* timestamp = "2012-02-04T14:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-5-Composition"
* entry[=].resource = 2-5-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-5-MedStatNorvasc"
* entry[=].resource = 2-5-MedStatNorvasc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Device/ExampleDevice"
* entry[=].resource = ExampleDevice