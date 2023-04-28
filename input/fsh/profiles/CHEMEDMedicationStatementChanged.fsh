Profile: CHEMEDMedicationStatementChanged
Parent: CHEMEDMedicationStatement
Id: ch-emed-medicationstatement-changed
Title: "CH EMED MedicationStatement Changed"
Description: "Definition of the changed medication statement for the pharmaceutical advice document"

* . ^short = "CH EMED MedicationStatement Changed (PADV)"
* partOf 1..1
* partOf only Reference(CHEMEDObservation)
* partOf ^short = "Reference to the Observation from type 'CHANGE'"
* partOf ^type.aggregation[0] = #referenced
* partOf ^type.aggregation[+] = #bundled