Extension: CHEMEDExtDispense
Id: ch-emed-ext-dispense
Title: "CH EMED Extension Dispense"
Description: "Extension to reference an external MedicationDispense and the Medication Dispense document that contains it"

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
* extension[id] ^short = "Identifier of the referenced external MedicationDispense"
* extension[id].url only uri
* extension[id].valueIdentifier only Identifier
* extension[id].valueIdentifier ^short = "Value of extension"
* extension[externalDocumentId] only Extension
* extension[externalDocumentId] ^short = "Identifier of the referenced external Medication Dispense document"
* extension[externalDocumentId].url only uri
* extension[externalDocumentId].valueIdentifier only Identifier
* extension[externalDocumentId].valueIdentifier ^short = "Value of extension"
* url only uri