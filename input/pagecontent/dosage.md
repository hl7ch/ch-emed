### Overview

Intro TBD (1-1-1-1 format, normal/split)

<div>{% include dosage.svg %}</div>


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


### Normal Dosing (incl. Dosage Non-Structured)
The normal dosing is represented using **one structured dosage element**.   
(One non-structured dosage element may be additionally be present.)

#### Dosage example according the use case step 1-1

{:class="table table-bordered"}
| Dosage non-structured | Dosage morning | Dosage noon | Dosage evening | Dosage night | Route of administration | 
| :------- | :------- | :------- | :------- | :------- | :------- |
| Morgens 1/2 Tablette nehmen | 0.5 | 0 | 0 | 0 | oral |


```json
    "dosage" : [
      {
        "text" : "Morgens 1/2 Tablette nehmen"
      },
      {
        "timing" : {
            "repeat" : {
            "boundsPeriod" : {
                "start" : "2011-11-29"
            },
            "when" : [
                "ACM"
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
                "value" : 0.5,
                "unit" : "Tablette",
                "system" : "http://snomed.info/sct",
                "code" : "732936001"
            }
          }
        ]
      }
    ]
```

See the full example: [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.json.html)

#### Split Dosing (incl. Dosage Non-Structured)
The split dosing differs from the normal dosing in that the dosage element can be repeated. In contrast to normal dosing, where the dosage element can occur once, the **dosage element** can be repeated **n times** in split dosing. The order of the dosage instructions is defined by the required element **sequence**.   
(One non-structured dosage element may be additionally be present.)

**Dosage example according the use case step 2-3:**

{:class="table table-bordered"}
| Dosage non-structured | Dosage morning | Dosage noon | Dosage evening | Dosage night | Route of administration | 
| :------- | :------- | :------- | :------- | :------- | :------- |
| Morgens 1 und abends 1/2 Tablette einnehmen | 1 | 0 | 0.5 | 0 | oral |

```json
    "dosage" : [
      {
        "text" : "Morgens 1 und abends 1/2 Tablette nehmen"
      },
      {
        "sequence" : 1,
        "timing" : {
            "repeat" : {
            "boundsPeriod" : {
                "start" : "2012-02-04"
            },
            "when" : [
                "ACM"
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
                "unit" : "Tablette",
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
            "boundsPeriod" : {
                "start" : "2012-02-04"
            },
            "when" : [
                "ACV"
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
                "value" : 0.5,
                "unit" : "Tablette",
                "system" : "http://snomed.info/sct",
                "code" : "732936001"
            }
          }
        ]
      }
    ]
```

See the full example: [2-3 Medication Treatment Plan document](Bundle-2-3-MedicationTreatmentPlan.json.html)
