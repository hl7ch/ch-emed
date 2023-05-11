Invariant: ch-emed-comp-card
Description: "If a LOINC code is additionally provided, '56445-0' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() implies (coding.where(system = 'http://loinc.org').code = '56445-0')"

Invariant: ch-emed-comp-list
Description: "If a LOINC code is additionally provided, '56445-0' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() implies (coding.where(system = 'http://loinc.org').code = '56445-0')"

Invariant: ch-emed-comp-mtp
Description: "If a LOINC code is additionally provided, '77603-9' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() and (coding.where(system = 'http://loinc.org').code = '77603-9')"

Invariant: ch-emed-comp-dis
Description: "If a LOINC code is additionally provided, '60593-1' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() and (coding.where(system = 'http://loinc.org').code = '60593-1')"

Invariant: ch-emed-comp-pre
Description: "If a LOINC code is additionally provided, '57833-6' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() and (coding.where(system = 'http://loinc.org').code = '57833-6')"

Invariant: ch-emed-comp-padv
Description: "If a LOINC code is additionally provided, '61356-2' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() and (coding.where(system = 'http://loinc.org').code = '61356-2')"
