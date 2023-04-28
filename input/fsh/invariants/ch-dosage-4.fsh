Invariant: ch-dosage-4
Description: "For split dosage timing event and dose/rate are required"
Severity: #error
Expression: "sequence.exists() implies (timing.repeat.when.exists() and (doseAndRate.doseRange.exists() or doseAndRate.doseQuantity.exists()))"