Profile: CHEMEDDosage
Parent: Dosage
Id: ch-emed-dosage
Title: "CH EMED Dosage (MedicationStatement / MedicationDispense)"
Description: "Definition of the dosage (used in MedicationStatement / MedicationDispense)"

* obeys ch-dosage-4
* . ^short = "CH EMED Dosage (MedicationStatement / MedicationDispense)"
* sequence obeys ch-dosage-1
* sequence ^short = "The order of the dosage instructions"
* patientInstruction MS
* patientInstruction ^short = "Patient instructions (e.g. 'take with food'), incl. free text dosage instructions (e.g. for complex dosage)"
* timing ^short = "When medication should be administered"
* timing.repeat ^short = "When the event is to occur"
* timing.repeat.boundsPeriod MS
* timing.repeat.boundsPeriod ^short = "Start and/or end of treatment"
* timing.repeat.when MS
* timing.repeat.when obeys ch-emed-event-timing
* timing.repeat.when ^short = "Code for time period of occurrence"
* asNeededBoolean ^short = "In reserve (to be taken by the patient only if the need arises - e.g. pains)"
* route from $edqm-routeofadministration (required)
* route ^short = "Route of administration"
* route.coding 1.. MS
* route.coding.system 1..
* route.coding.code 1..
* doseAndRate ..1
* doseAndRate ^short = "Amount of medication administered"
* doseAndRate.dose[x] only CHEMEDRangeWithEmedUnits or CHEMEDQuantityWithEmedUnits
* doseAndRate.dose[x] MS