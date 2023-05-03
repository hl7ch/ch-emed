Invariant: ch-emed-comp-card
Description: "If a LOINC code is additionally provided, '56445-0' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() implies (coding.where(system = 'http://loinc.org').code = '56445-0')"

Invariant: ch-emed-comp-list
Description: "If a LOINC code is additionally provided, '56445-0' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://loinc.org').exists() implies (coding.where(system = 'http://loinc.org').code = '56445-0')"

Invariant: ch-emed-comp-mtp
Description: "If a SNOMED CT code is additionally provided, '761931002' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://snomed.info/sct').exists() and (coding.where(system = 'http://snomed.info/sct').code = '761931002')"

Invariant: ch-emed-comp-dis
Description: "If a SNOMED CT code is additionally provided, '294121000195110' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://snomed.info/sct').exists() and (coding.where(system = 'http://snomed.info/sct').code = '294121000195110')"

Invariant: ch-emed-comp-pre
Description: "If a SNOMED CT code is additionally provided, '761938008' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://snomed.info/sct').exists() and (coding.where(system = 'http://snomed.info/sct').code = '761938008')"

Invariant: ch-emed-comp-padv
Description: "If a SNOMED CT code is additionally provided, '419891008' shall be used for this document type."
Severity: #error
Expression: "coding.where(system = 'http://snomed.info/sct').exists() and (coding.where(system = 'http://snomed.info/sct').code = '419891008')"
