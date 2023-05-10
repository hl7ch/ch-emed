Instance: TriatecWithCodeNotFromVS
InstanceOf: CHEMEDMedication
Title: "Triatec with code not from VS"
Description: "Example for Medication with ingredient code, which is NOT included in the SCT-VS with extensible binding (to show the warning)"
Usage: #example
* code = urn:oid:2.51.1.1#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* code.text = "TRIATEC Tabl 2.5 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablette"
* amount.numerator = 20 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 '{Package}' "Package"

// code from VS: SCT #386872004 'Ramipril (substance)'
// the following code is not in the VS (extensible)
* ingredient.itemCodeableConcept.coding = $sct#408050008 "Ramipril 2.5 mg oral tablet"
* ingredient.itemCodeableConcept.coding.version = "http://snomed.info/sct/2011000195101"
* ingredient.itemCodeableConcept.text = "Ramipril"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"