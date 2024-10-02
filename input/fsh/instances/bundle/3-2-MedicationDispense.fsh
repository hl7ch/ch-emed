Instance: 3-2-MedicationDispense
InstanceOf: CHEMEDDocumentMedicationDispense
Title: "3-2 Medication Dispense document"
Description: "Example for Bundle - Use case step 3-2: Documentation of the medication administration of Fentanyl to Max Moser."
Usage: #example
* id = "3-2-MedicationDispense"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8ef0d745-e218-4636-abac-ea842ca6a421"
* type = #document
* timestamp = "2020-02-03T17:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/3-2-Composition"
* entry[=].resource = 3-2-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MaxMoser"
* entry[=].resource = MaxMoser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PriskaHuberAtRettungsdienst"
* entry[=].resource = PriskaHuberAtRettungsdienst
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/PriskaHuber"
* entry[=].resource = PriskaHuber
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Rettungsdienst"
* entry[=].resource = Rettungsdienst
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationAdministration/3-2-MedAdminFentanyl"
* entry[=].resource = 3-2-MedAdminFentanyl