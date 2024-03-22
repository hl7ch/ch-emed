Extension: CHEMEDExtPrescription
Id: ch-emed-ext-prescription
Title: "CH EMED Extension Prescription"
Description: "Extension to reference an external MedicationRequest and the Medication Prescritpion document that contains it"

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
* extension[id] ^short = "Identifier of the referenced external MedicationRequest"
* extension[id].url only uri
* extension[id].value[x] only Identifier
* extension[externalDocumentId] only Extension
* extension[externalDocumentId] ^short = "Identifier of the referenced external Medication Prescritpion document"
* extension[externalDocumentId].url only uri
* extension[externalDocumentId].value[x] only Identifier
* url only uri