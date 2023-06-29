Invariant: ch-emed-med-1
Description: "Medication or ingredient name has to be specified"
Severity: #error
Expression: "code.text.exists() or ingredient.item.text.exists()"