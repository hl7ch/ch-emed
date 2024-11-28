Instance: 2-2-ObsPharmaceuticalAdvice
InstanceOf: CHEMEDObservation
Title: "2-2 Observation for Pharmaceutical Advice document"
Description: "Example for Observation (PADV) - Use case step 2-2: Cancellation of Triatec due to undesired side effects."
Usage: #example
* id = "2-2-ObsPharmaceuticalAdvice"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e68055ce-1540-4b26-b72d-d9c3e595416a"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject.reference = "Patient/MonikaWegmueller"
* performer.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
* effectiveDateTime = "2012-02-04T14:00:00+01:00"
* issued = "2012-02-04T14:00:00+01:00"
* note.text = "Abgesetzt aufgrund UAW trockener Husten"