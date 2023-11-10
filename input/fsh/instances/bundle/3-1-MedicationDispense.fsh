Instance: 3-1-MedicationDispense
InstanceOf: CHEMEDDocumentMedicationDispense
Title: "3-1 Medication Dispense document"
Description: "Example for Bundle"
Usage: #example
* id = "3-1-MedicationDispense"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c276c2af-afab-4a78-859b-485324584b37"
* type = #document
* timestamp = "2020-02-03T17:00:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/3-1-Composition"
* entry[=].resource = 3-1-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MaxMoser"
* entry[=].resource = MaxMoser
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PriskaHuberAtRettungsdienst"
* entry[=].resource = PriskaHuberAtRettungsdienst
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/PriskaHuber"
* entry[=].resource = PriskaHuber
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Rettungsdienst"
* entry[=].resource = Rettungsdienst
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationAdministration/3-1-MedAdminNacl"
* entry[=].resource = 3-1-MedAdminNacl