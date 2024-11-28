Instance: 2-6-MedicationPrescription
InstanceOf: CHEMEDDocumentMedicationPrescription
Title: "2-6 Medication Prescription document"
Description: "Example for Bundle - Use case 2-6: Prescription for Belok Zok for Monika Wegmüller."
Usage: #example
* id = "2-6-MedicationPrescription"
* meta.lastUpdated = "2020-02-21T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1c5b5e9b-24f7-45ed-ae9c-6e2ec53e7b05"
* type = #document
* timestamp = "2012-02-04T14:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-6-Composition"
* entry[=].resource = 2-6-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationRequest/2-6-MedReqNorvasc"
* entry[=].resource = 2-6-MedReqNorvasc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Binary/2-6-pdf"
* entry[=].resource = 2-6-pdf
* entry[=].id = "2-6-pdf"
