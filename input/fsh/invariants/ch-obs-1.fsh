Invariant: ch-obs-1
Description: "In case of a 'CHANGE', reference shall be made to an entry containing the changes."
Severity: #error
Expression: "code.coding.code='CHANGE' implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed' or url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists()"