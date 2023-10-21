Invariant: ch-obs-1
Description: "In case of a 'CHANGE', reference shall be made to an entry containing the changes."
Severity: #error
Expression: "code.coding.exists(system='urn:oid:1.3.6.1.4.1.19376.1.9.2.1' and code='CHANGE') implies extension.where(url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationstatement-changed' or url='http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-medicationrequest-changed').exists()"