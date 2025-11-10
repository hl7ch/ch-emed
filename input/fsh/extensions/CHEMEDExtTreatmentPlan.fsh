Extension: CHEMEDExtTreatmentPlan
Id: ch-emed-ext-treatmentplan
Title: "CH EMED Extension Treatment Plan"
Description: "Extension to reference an external MedicationStatement and the Medication Treatment Plan document that contains it"

* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* . ^short = "CH EMED Extension"
* extension contains
    id 1..1 and
    externalDocumentId 1..1
* extension[id] only Extension
* extension[id] ^short = "Identifier of the referenced external MedicationStatement"
* extension[id].url only uri
* extension[id].value[x] only CHEMEDUUIDIdentifier
* extension[externalDocumentId] only Extension
* extension[externalDocumentId] ^short = "Identifier of the referenced external Medication Treatment Plan document"
* extension[externalDocumentId].url only uri
* extension[externalDocumentId].value[x] only CHEMEDUUIDIdentifier
* url only uri