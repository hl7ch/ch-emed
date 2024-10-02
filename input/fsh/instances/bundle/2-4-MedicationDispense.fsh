Instance: 2-4-MedicationDispense
InstanceOf: CHEMEDDocumentMedicationDispense
Title: "2-4 Medication Dispense document"
Description: "Example for Bundle - Use case step 2-4: Medication dispense of Beloc Zok to Monika Wegmüller."
Usage: #example
* id = "2-4-MedicationDispense"
* meta.lastUpdated = "2020-02-20T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d8143fea-4778-11e6-beb8-9e71128cae77"
* type = #document
* timestamp = "2012-02-04T14:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-4-Composition"
* entry[=].resource = 2-4-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationDispense/2-4-MedDispBeloczok"
* entry[=].resource = 2-4-MedDispBeloczok