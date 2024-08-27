Instance: 1-2-MedicationDispense
InstanceOf: CHEMEDDocumentMedicationDispense
Title: "1-2 Medication Dispense document"
Description: "Example for Bundle"
Usage: #example
* id = "1-2-MedicationDispense"
* meta.lastUpdated = "2020-02-20T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d428e837-46fe-49cc-9212-245d153c68ee"
* type = #document
* timestamp = "2011-11-29T11:01:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/1-2-Composition"
* entry[=].resource = 1-2-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationDispense/1-2-MedDispTriatec"
* entry[=].resource = 1-2-MedDispTriatec