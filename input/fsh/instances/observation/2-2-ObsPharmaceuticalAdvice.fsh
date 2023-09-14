Instance: 2-2-ObsPharmaceuticalAdvice
InstanceOf: CHEMEDObservation
Title: "2-2 Observation for Pharmaceutical Advice document"
Description: "Example for Observation (PADV)"
Usage: #example
* id = "2-2-ObsPharmaceuticalAdvice"
* extension.extension[0].url = "id"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension.extension[+].url = "externalDocumentId"
* extension.extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension.extension[=].valueIdentifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* extension.url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8ed02d0a-2971-11e6-b67b-9e71128cae77"
* status = #final
* code = urn:oid:1.3.6.1.4.1.19376.1.9.2.1#CANCEL
* subject.reference = "Patient/MonikaWegmueller"
* effectiveDateTime = "2012-02-04T14:00:00+01:00"
* note.text = "Abgesetzt aufgrund UAW trockener Husten"
* performer.reference = "PractitionerRole/FamilienHausarztAtHausarzt"
