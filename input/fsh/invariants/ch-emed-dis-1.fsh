Invariant: ch-emed-dis-1
Description: "If no substitution was performed, no type is expected."
Severity: #error
Expression: "wasSubstituted = true or (wasSubstituted = false and type.exists().not())"