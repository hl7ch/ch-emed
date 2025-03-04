Profile: CHEMEDDosageSplit
Parent: CHCoreDosage
Id: ch-emed-dosage-split
Title: "CH EMED Dosage Split"
Description: "Definition of the split dosage (used in MedicationStatement / MedicationDispense / MedicationRequest)"

* . ^short = "CH EMED Dosage Split (MedicationStatement / MedicationDispense / MedicationRequest)"
* sequence 1..
* sequence obeys ch-dosage-2
* sequence ^short = "The order of the dosage instructions"
* text 0..0
* additionalInstruction 0..0
* patientInstruction 0..0
* timing 1..
* timing ^short = "When medication should be administered"
* timing.repeat 1..
* timing.repeat ^short = "When the event is to occur"
* timing.repeat.bounds[x] 0..0
* timing.repeat.when 1.. MS
* timing.repeat.when obeys ch-emed-event-timing
* timing.repeat.when ^short = "Code for time period of occurrence"
* asNeeded[x] 0..0
* site 0..0
* route 0..0
* method 0..0
* doseAndRate 1..1
* doseAndRate ^short = "Amount of medication administered"
* doseAndRate.dose[x] 1.. MS
// CH Core: * doseAndRate.dose[x] only CHEMEDRangeWithEmedUnits or CHEMEDQuantityWithEmedUnits
* maxDosePerPeriod 0..0
* maxDosePerAdministration 0..0
* maxDosePerLifetime 0..0