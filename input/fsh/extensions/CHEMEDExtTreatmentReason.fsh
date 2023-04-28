Extension: CHEMEDExtTreatmentReason
Id: ch-emed-ext-treatmentreason
Title: "CH EMED Extension Treatment Reason"
Description: "Extension to represent the treatment reason"

* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . ^short = "CH EMED Extension"
* url only uri
* valueString 1..1
* valueString only string
* valueString ^short = "Treatment reason"