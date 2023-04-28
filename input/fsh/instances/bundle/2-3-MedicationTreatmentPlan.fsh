Instance: 2-3-MedicationTreatmentPlan
InstanceOf: CHEMEDDocumentMedicationTreatmentPlan
Title: "2-3 Medication Treatment Plan document"
Description: "Example for Bundle"
Usage: #example
* id = "2-3-MedicationTreatmentPlan"
* meta.lastUpdated = "2020-03-09T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17931678-20b4-11e6-b67b-9e71128cca77"
* type = #document
* timestamp = "2012-02-04T14:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-3-Composition"
* entry[=].resource = 2-3-Composition
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
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-3-MedStatBeloczok"
* entry[=].resource = 2-3-MedStatBeloczok