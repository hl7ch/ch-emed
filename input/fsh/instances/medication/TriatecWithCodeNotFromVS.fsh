Instance: TriatecWithCodeNotFromVS
InstanceOf: CHEMEDMedication
Title: "Triatec with code not from VS"
Description: "Example for Medication - Triatec with an ingredient code (SCT), which is NOT included in the SCT-VS which has an extensible binding."
Usage: #example
* code = urn:oid:2.51.1.1#7680538751228 "TRIATEC Tabl 2.5 mg 20 Stk"
* code.text = "TRIATEC Tabl 2.5 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablette"
* amount.numerator = 20 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"

// code from VS: SCT #386872004 'Ramipril (substance)'
// the following code is not in the VS (extensible)
* ingredient.itemCodeableConcept.coding = $sct#408050008 "Ramipril 2.5 mg oral tablet"
* ingredient.itemCodeableConcept.text = "Ramipril"
* ingredient.strength.numerator = 2.5 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"