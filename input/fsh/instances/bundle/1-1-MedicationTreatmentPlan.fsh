Instance: 1-1-MedicationTreatmentPlan
InstanceOf: CHEMEDDocumentMedicationTreatmentPlan
Title: "1-1 Medication Treatment Plan document"
Description: "Example for Bundle - Use case step 1-1: Decision for Triatec as medication treatment for Monika Wegmüller."
Usage: #example
* id = "1-1-MedicationTreatmentPlan"
* meta.lastUpdated = "2020-03-09T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* type = #document
* timestamp = "2011-11-29T11:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/1-1-Composition"
* entry[=].resource = 1-1-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/1-1-MedStatTriatec"
* entry[=].resource = 1-1-MedStatTriatec