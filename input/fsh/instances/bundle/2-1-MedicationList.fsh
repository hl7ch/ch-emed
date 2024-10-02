Instance: 2-1-MedicationList
InstanceOf: CHEMEDDocumentMedicationList
Title: "2-1 Medication List document"
Description: "Example for Bundle - Use case step 2-1: Dynamically generated medication list for Monika Wegmüller."
Usage: #example
* id = "2-1-MedicationList"
* meta.lastUpdated = "2020-03-10T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17931678-20b4-11e6-b67b-9e71128cae77"
* type = #document
* timestamp = "2012-02-04T13:55:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-1-Composition"
* entry[=].resource = 2-1-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Device/ExampleDevice"
* entry[=].resource = ExampleDevice
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-1-MedStatTriatec"
* entry[=].resource = 2-1-MedStatTriatec
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationDispense/2-1-MedDispTriatec"
* entry[=].resource = 2-1-MedDispTriatec
