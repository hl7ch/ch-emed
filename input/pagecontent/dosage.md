### Overview

This implementation guide currently describes the **normal dosing** and the **split dosing**. The normal dosing can be given in a structured form and/or as narrative text. If possible, the structured form should be provided. In case structured dosage instructions are not provided or for complex dosages, the dosage can be represented using narrative text.

In the structured form, the format 1-1-1-1, meaning the administration time in the morning, at noon, in the evening, at night, is supported. For [normal dosing](#normal-dosing), the dose quantity is the same at the defined administration times (e.g. 1-0-0-0, 1-0-1-0). For [split dosing](#split-dosing), the dose quantity varies depending on the administration time (e.g. 1-0-2-0, 2-1-2-0).   

The dosage instruction is based on the *6.3.4.6 Dosage Instructions Content Module (1.3.6.1.4.1.19376.1.9.1.3.6)* in the [IHE Pharmacy Technical Framework Supplement: Community Prescription (PRE)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PRE.pdf).

#### Timing
##### Start and Stop
The (outer) bounds of the treatment period are mapped as start and/or end dates (with or without time).
##### Timing Event
For the representation of the time of administration according to the 1-1-1-1 scheme, the values MORN-NOON-EVE-NIGHT from the [ValueSet EventTiming](https://www.hl7.org/fhir/valueset-event-timing.html) are highly recommended for the Swiss use.

#### Dose and Rate
The amount of medication administered according to the 1-1-1-1 scheme is represented with SNOMED CT or UCUM codes, which are defined in the [ValueSet UnitCode](ValueSet-UnitCode.html).

#### In Reserve
There is an option to indicate whether the medication is taken only as needed (e.g., when pain occurs) as part of the specified dosing schedule. If it is a reserve medication, the dosage indicated is the maximum dosage the patient may take.

#### Route of Administration
A code for specifying the route of administration into or onto a patient's body comes from the [ValueSet EDQM - RouteOfAdministration](ValueSet-edqm-routeofadministration.html).

#### Patient Instruction
Instructions to the patient regarding the administration of the medication, e.g. taking with food. The instructions are in a patient understandable language.


<div markdown="5" class="dragon">
    <p>
    The current FHIR representation of the dosage within the defined documents for the exchange of medication information is shown here. The use case and the corresponding examples contain the so-called normal and split dosing. 
    </p>
    <p>
    The implementers are asked here to communicate other dosage forms that are relevant in their environment, so that any expansions can be made in a next step. Or feedback on whether these dosage forms are sufficient would be helpful.
    </p>
    <p>
    Please add your feedback via the 'Propose a change'-link in the footer of the page.
    </p>
</div>
<p>&nbsp;</p>


### Normal Dosing
The normal dosing is represented using **one dosage element**. The dosage can be in a [structured form](#normal-dosing---structured), [narrative text](#normal-dosing---narrative), or a [combination of both](#normal-dosing---structured--narrative). 

#### Normal Dosing - Structured
Dosing example based on the use case step 2-5:

{:class="table table-bordered"}
| Dosage morning | Dosage noon | Dosage evening | Dosage night | Route of administration | 
| :------- | :------- | :------- | :------- | :------- |
| 1 | 0 | 1 | 0 | oral |


```json
  "dosage" : [
    {
      "patientInstruction" : "Take with food",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
              "start" : "2012-02-04"
          },
          "when" : [
            "MORN",
            "EVE"
          ]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "urn:oid:0.4.0.127.0.16.1.1.2.1",
            "code" : "20053000",
            "display" : "Oral use"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ]
```

See the full example: [2-5 Medication Treatment Plan document](Bundle-2-5-MedicationTreatmentPlan.json.html)

#### Normal Dosing - Narrative
The narrative dosage instructions is represented in the `Dosage.text` element.

Dosing example where no structured form (of the timing event) is provided:

{:class="table table-bordered"}
<table>
	<tbody>
		<tr>
			<th>Dosage morning</th>
			<th>Dosage noon</th>
			<th>Dosage evening</th>
			<th>Dosage night</th>
			<th>Route of administration</th>
		</tr>
		<tr>
			<td colspan="4">Application 3-4 times a day, for a maximum of 14 days</td>
			<td>Cutaneous use</td>
		</tr>
	</tbody>
</table>

```json
  "dosage" : [
    {
      "text" : "Application 3-4 times a day, for a maximum of 14 days",
      "patientInstruction" : "Apply cherry-sized amount of the gel to the elbow and rub in gently. Use as long as the pain is present (max. 14 days).",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2022-09-01",
            "end" : "2022-09-14"
          }
        }
      },
      "asNeededBoolean" : true,
      "route" : {
        "coding" : [
          {
            "system" : "urn:oid:0.4.0.127.0.16.1.1.2.1",
            "code" : "20003000",
            "display" : "Cutaneous use"
          }
        ]
      }
    }
  ]
```

#### Normal Dosing - Structured & Narrative
Dosing example with the structured form and supplemented by the narrative text:

{:class="table table-bordered"}
<table>
	<tbody>
		<tr>
			<th>Dosage morning</th>
			<th>Dosage noon</th>
			<th>Dosage evening</th>
			<th>Dosage night</th>
			<th>Route of administration</th>
		</tr>
		<tr>
			<td>1</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td rowspan="2">Cutaneous use</td>
		</tr>
    <tr>
			<td colspan="4">Application as long as needed, but for a maximum of 14 days</td>
		</tr>
	</tbody>
</table>

```json
  "dosage" : [
    {
      "text" : "Application as long as needed, but for a maximum of 14 days",
      "patientInstruction" : "Apply cherry-sized amount of the gel to the elbow and rub in gently. Use as long as the pain is present (max. 14 days).",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2022-09-01",
            "end" : "2022-09-14"
          },
          "when" : [
            "MORN",
            "NOON",
            "EVE"
          ]
        }
      },
      "asNeededBoolean" : true,
      "route" : {
        "coding" : [
          {
            "system" : "urn:oid:0.4.0.127.0.16.1.1.2.1",
            "code" : "20003000",
            "display" : "Cutaneous use"
          }
        ]
      }
    }
  ]
```

### Split Dosing
The split dosing differs from the normal dosing in that the dosage element is repeated. In contrast to normal dosing, where the dosage element can occur once, the **dosage element** can be repeated **n times** in split dosing. The order of the dosage instructions is defined by the required element `Dosage.sequence`. The information, which is the same for all dosage elements, e.g. route of administration, is mapped in the first dosage element.  

Dosing example based on the use case step 2-3:

{:class="table table-bordered"}
| Dosage morning | Dosage noon | Dosage evening | Dosage night | Route of administration | 
| :------- | :------- | :------- | :------- | :------- |
| 1 | 0 | 0.5 | 0 | oral |

```json
  "dosage" : [
    {
      "sequence" : 1,
      "patientInstruction" : "Take with food",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2012-02-04"
          },
          "when" : [
            "MORN"
          ]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "urn:oid:0.4.0.127.0.16.1.1.2.1",
            "code" : "20053000",
            "display" : "Oral use"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    },
    {
      "sequence" : 2,
      "timing" : {
        "repeat" : {
          "when" : [
            "EVE"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 0.5,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ]
```

See the full example: [2-3 Medication Treatment Plan document](Bundle-2-3-MedicationTreatmentPlan.json.html)

### Profiles
Definition of the dosage (base dosage entry 1..1):
* [CH EMED Dosage (MedicationStatement / MedicationDispense)](StructureDefinition-ch-emed-dosage.html)
* [CH EMED Dosage (MedicationRequest)](StructureDefinition-ch-emed-dosage-medicationrequest.html)

Definition of the split dosage (additional dosage entry 0..*):
* [CH EMED Dosage Split (MedicationStatement / MedicationDispense)](StructureDefinition-ch-emed-dosage-split.html)
* [CH EMED Dosage Split (MedicationRequest)](StructureDefinition-ch-emed-dosage-split-medicationrequest.html)
