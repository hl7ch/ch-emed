Extension: CHEMEDExtMedicationStatementChanged
Id: ch-emed-ext-medicationstatement-changed
Title: "CH EMED Extension MedicationStatement Changed"
Description: "Extension to represent the changed MedicationStatement"

* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "CH EMED Extension"
* url only uri
* value[x] 1..1
* value[x] only Reference(CHEMEDMedicationStatementChanged)
* value[x] ^short = "The changed MedicationStatement"
* value[x] ^type.aggregation[0] = #referenced
* value[x] ^type.aggregation[+] = #bundled