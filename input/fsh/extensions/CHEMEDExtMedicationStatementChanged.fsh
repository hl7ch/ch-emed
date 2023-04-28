Extension: CHEMEDExtMedicationStatementChanged
Id: ch-emed-ext-medicationstatement-changed
Title: "CH EMED Extension MedicationStatement Changed"
Description: "Extension to represent the changed MedicationStatement"

* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "CH EMED Extension"
* url only uri
* valueReference 1..1
* valueReference only Reference(CHEMEDMedicationStatementChanged)
* valueReference ^short = "The changed MedicationStatement"
* valueReference ^type.aggregation[0] = #referenced
* valueReference ^type.aggregation[+] = #bundled