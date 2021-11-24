### Overview
In the use case of this implementation guide ([de](usecase-german.html)/[fr](usecase-french.html)), one example of a so-called **repeated purchase per medication** (Wiederholter Bezug pro Arzneimittel/Retrait répété du médicament) is described for the prescription. There are other possibilities besides this example, which are explained in more detail here.

<div>{% include repeated-purchase.svg %}</div>

*Note: No special cases are covered here. The use of the phrase "until a certain point in time *" was chosen because there are different regulations depending on the prescription category (e.g. narcotics) or legal/tariff regulations.*

### Period of validity of the prescription and number of repeats
A principal differentiation must therefore be made between the **period of validity of the prescription** (within which period the medication may be purchased) and the **number of repeats** (in which quantity the medicament may be purchased).

{% include img.html img="repeated-purchase.png" caption="Fig.: Period of validity (blue) and number of repeats (t2/t3)" width="60%" %}


### Examples
It should be noted that the validity period and the number of repetitions can be represented individually or in combination. Below are some examples to illustrate this.

#### Example 1: Prescription without repetition note
No note is made on the prescription regarding repetition. It allows a single dispense of one pack.

```json
	"dispenseRequest": {
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment: MedicationPrescription.dispenseRequest*

#### Example 2: Prescription with general and numerical repetion note  
Prescription of an antibiotic for an occasional simple urinary tract infection. The repeat prescription is valid for one year and one pack may be dispensed three times.

```json
	"dispenseRequest": {
		"validityPeriod": {
			"start": "2020-06-14",
			"end": "2021-06-13"
		},
		"numberOfRepeatsAllowed": 2,
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment: MedicationPrescription.dispenseRequest*

#### Example 3: Prescription with general repetition note
For chronic severe pain, a prescription for narcotics is given for a maximum period of 3 months.

```json
	"dispenseRequest": {
		"validityPeriod": {
			"start": "2019-05-02",
			"end": "2019-08-01"
		},
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment: MedicationPrescription.dispenseRequest*

#### Example 4: Prescription with specific repetition note 'ne rep.'
It is explicitly noted on the prescription that it may not be repeated, thus an initial dispensing of one pack can be performed.
```json
	"dispenseRequest": {
		"numberOfRepeatsAllowed": 0,
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment: MedicationPrescription.dispenseRequest*