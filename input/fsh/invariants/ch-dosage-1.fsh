Invariant: ch-dosage-1
Description: "No sequence number (for one dosage element) or sequence number = 1 (for more than one dosage element)"
Severity: #error
Expression: "$this.count() = 0 or $this = 1"