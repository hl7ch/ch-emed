### Overview
In the use case (step 2-6) of this implementation guide ([de](usecase-german.html)/[fr](usecase-french.html)), an example of a so-called **repeated dispense per medication** (Wiederholter Bezug pro Arzneimittel/Retrait répété du médicament) is described for the prescription. Besides this example, there are other possibilities of repeated dispense. The different variants are shown here.

<div>{% include repeated-dispense.svg %}</div>

<div markdown="5" class="dragon">
    <p>
    The current FHIR representation of the repeated dispense within the defined Medication Prescription document is shown here. Use case 2-6 and further examples for repeated dispense are represented. Please note that currently no special cases have been included.
    </p>
    <p>
    The use of the phrase "until a certain point in time" in the graphic was chosen because there are different regulations depending on the prescription category (e.g. narcotics) or legal/tariff regulations.
    </p>
	<p>
	The implementers are asked here to communicate other options that are relevant in their environment, so that any expansions can be made in a next step. Please add your feedback via the 'Propose a change'-link in the footer of the page.
	</p>
</div>
<p>&nbsp;</p>

### Period of validity of the prescription and number of repeats
A principal differentiation must be made between the **period of validity of the prescription** (within which period the medication may be dispensed) and the **number of repeats** (in which quantity the medicament may be dispensed).

{% include img.html img="repeated-dispense.png" caption="Fig.: Period of validity (blue) and number of repeats (t2/t3)" width="60%" %}


### Examples
It should be noted that the validity period and the number of repetitions can be represented individually or in combination. Below are some examples to illustrate this.

#### Example 1: Prescription with general repetition note
Use case 2-6: Repeated dispense for three months.

```json
	"dispenseRequest": {
		"validityPeriod": {
			"start": "2012-02-04",
			"end": "2012-05-03"
		}
	}
```
*Code fragment 1: MedicationPrescription.dispenseRequest*

#### Example 2: Prescription without repetition note
No note is made on the prescription regarding repetition. It allows a single dispense of one pack.

```json
	"dispenseRequest": {
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment 2: MedicationPrescription.dispenseRequest*

#### Example 3: Prescription with general and numerical repetion note  
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
*Code fragment 3: MedicationPrescription.dispenseRequest*

#### Example 4: Prescription with general repetition note
For chronic severe pain, a prescription for narcotics is given for a maximum period of 3 months. Only one package per dispense.

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
*Code fragment 4: MedicationPrescription.dispenseRequest*

#### Example 5: Prescription with specific repetition note 'ne rep.'
It is explicitly noted on the prescription that it may not be repeated, thus an initial dispensing of one pack can be performed.
```json
	"dispenseRequest": {
		"numberOfRepeatsAllowed": 0,
        "quantity": {
			"value": 1
		}
	}
```
*Code fragment 5: MedicationPrescription.dispenseRequest*