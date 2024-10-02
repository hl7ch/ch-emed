// NOTE: identical example but with uuid as fullUrl, adjust both instances when making changes

Instance: 2-7-MedicationCard
InstanceOf: CHEMEDDocumentMedicationCard
Title: "2-7 Medication Card document"
Description: "Example for Bundle - Use case step 2-7: Medication plan for Monika Wegmüller, created by her general practitioner. The 'fullUrl' elements of the entries and the references use absolute URLs."
Usage: #example
* id = "2-7-MedicationCard"
* meta.lastUpdated = "2020-02-21T12:31:59.738+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6b6ed376-a7da-44cb-92d1-e75ce1ae73b0"
* type = #document
* timestamp = "2012-02-04T14:05:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/2-7-Composition"
* entry[=].resource = 2-7-Composition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MonikaWegmueller"
* entry[=].resource = MonikaWegmueller
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/FamilienHausarztAtHausarzt"
* entry[=].resource = FamilienHausarztAtHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/FamilienHausarzt"
* entry[=].resource = FamilienHausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/Hausarzt"
* entry[=].resource = Hausarzt
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-7-MedStatBeloczok"
* entry[=].resource = 2-7-MedStatBeloczok
* entry[+].fullUrl = "http://test.fhir.ch/r4/MedicationStatement/2-7-MedStatNorvasc"
* entry[=].resource = 2-7-MedStatNorvasc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Binary/2-7-pdf"
* entry[=].resource = 2-7-pdf