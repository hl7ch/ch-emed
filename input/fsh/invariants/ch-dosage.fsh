// Base - Dosage.sequence
Invariant: ch-dosage-1
Description: "No sequence number (for one dosage element) or sequence number = 1 (for more than one dosage element)"
Severity: #error
Expression: "$this.count() = 0 or $this = 1"

// Split - Dosage.sequence
Invariant: ch-dosage-2
Description: "The sequence number MUST be greater than 1"
Severity: #error
Expression: "$this > 1"

// MedicationRequest
Invariant: ch-dosage-3
Description: "Patient instruction/free text dosage instruction, or timing and dose/rate has to be specified"
Severity: #error
Expression: "patientInstruction.exists() or (timing.exists() and doseAndRate.exists())"

// Dosage
Invariant: ch-dosage-4
Description: "For split dosage timing event and dose/rate are REQUIRED"
Severity: #error
Expression: "sequence.exists() implies (timing.repeat.when.exists() and doseAndRate.dose.exists())"

// MedicationStatement
Invariant: ch-dosage-medstat
Description: "If one dosage element is present, it SHALL NOT have a sequence number. 
              If more than one dosage element is present, the base entry SHALL have the sequence number 1."
Severity: #error
Expression: "(dosage.count() > 1 implies dosage.where($this.conformsTo('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-dosage') and sequence = 1).exists()) 
         and (dosage.count() = 1 implies dosage.single().sequence.exists().not())"
              
// MedicationDispense
Invariant: ch-dosage-meddis
Description: "If one dosage element is present, it SHALL NOT have a sequence number. 
              If more than one dosage element is present, the base entry SHALL have the sequence number 1."
Severity: #error
Expression: "(dosageInstruction.count() > 1 implies dosageInstruction.where($this.conformsTo('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-dosage') and sequence = 1).exists()) 
         and (dosageInstruction.count() = 1 implies dosageInstruction.single().sequence.exists().not())"

// MedicationRequest
Invariant: ch-dosage-medreq
Description: "If one dosage element is present, it SHALL NOT have a sequence number. 
              If more than one dosage element is present, the base entry SHALL have the sequence number 1."
Severity: #error
Expression: "(dosageInstruction.count() > 1 implies dosageInstruction.where($this.conformsTo('http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-dosage-medicationrequest') and sequence = 1).exists()) 
         and (dosageInstruction.count() = 1 implies dosageInstruction.single().sequence.exists().not())"


