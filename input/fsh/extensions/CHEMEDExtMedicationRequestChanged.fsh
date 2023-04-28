Extension: CHEMEDExtMedicationRequestChanged
Id: ch-emed-ext-medicationrequest-changed
Title: "CH EMED Extension MedicationRequest Changed"
Description: "Extension to represent the changed MedicationRequest"

* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "CH EMED Extension"
* url only uri
* valueReference 1..1
* valueReference only Reference(CHEMEDMedicationRequestChanged)
* valueReference ^short = "The changed MedicationRequest"
* valueReference ^type.aggregation[0] = #referenced
* valueReference ^type.aggregation[+] = #bundled