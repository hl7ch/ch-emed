Extension: CHEMEDExtMedicationRequestChanged
Id: ch-emed-ext-medicationrequest-changed
Title: "CH EMED Extension MedicationRequest Changed"
Description: "Extension to represent the changed MedicationRequest"

* ^context.type = #element
* ^context.expression = "Observation"
* . ^short = "CH EMED Extension"
* url only uri
* value[x] 1..1
* value[x] only Reference(CHEMEDMedicationRequestChanged)
* value[x] ^short = "The changed MedicationRequest"
* value[x] ^type.aggregation[0] = #referenced
* value[x] ^type.aggregation[+] = #bundled