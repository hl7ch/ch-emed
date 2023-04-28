Invariant: ch-dosage-3
Description: "Patient instruction/free text dosage instruction, timing or as needed has to be specified"
Severity: #error
Expression: "patientInstruction.exists() or timing.exists() or asNeededBoolean.exists()"