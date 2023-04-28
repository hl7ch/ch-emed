Profile: CHEMEDMedicationMedicationDispense
Parent: CHEMEDMedication
Id: ch-emed-medication-medicationdispense
Title: "CH EMED Medication (MedicationDispense)"
Description: "Definition of the medication for the medication dispense"
* . ^short = "CH EMED Medication (MedicationDispense)"
* amount 1..
* amount ^short = "Package size"
* batch ^short = "Details about packaged medications"
* batch.lotNumber ^short = "Identifier assigned to batch"