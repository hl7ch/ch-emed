In order to represent the relationship between the individual eMedication documents and their resources (MedicationStatement, MedicationDispense, MedicationAdministration, MedicationRequest, Observation), [extensions](#extensions) referencing the document and its resources are defined. These referencing mechanism is based on the usage of the [identifiers](#identifiers) from the document its resources.

The following figure illustrates the documents from the use case ([DE](usecase-german.html), [FR](usecase-french.html)) and schematically shows this referencing, which depicts the relationship between the documents.   

_Note on the colors:_   
_The background color of the resources reflects the medication (Triatec: orange, Beloc Zok: purple, Norvasc: blue)._   
_The colors of the identifiers and the resource box should reflect the relationships/origins. Note that from use case step 2-3 onwards, the colors are repeated without a reference to the previous steps._

{% include img.html img="overview-relationships-1.png" width="100%" %}

{% include img.html img="overview-relationships-2.png" caption="Fig.: Schematic overview of the relationship between the documents from the use case." width="100%" %}

### Identifiers

#### Identifier Format
In CH EMED it is specified to use an [UUID](https://hl7.org/fhir/R4/datatypes.html#uuid) as identifier, for both the document and resource identifiers.   
For representing UUIDs the `system` needs to be `urn:ietf:rfc:3986` as described [here](https://hl7.org/fhir/R4/datatypes.html#:~:text=If%20the%20identifier,of%20some%20kind). The `value` has to start with `urn:uuid:`.

#### Document Identifier
Document identifier in [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.html):   
`Bundle.identifier`

``` json
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
  }
```

#### Resource Identifier
Resource identifier in [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.json.html):   
`MedicationStatement.identifier` (in this example the resource identifier has the same value as the document identifier, but it does not have to be that way)

``` json
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
  }
```

#### Referencing Extensions
Extension pairs are used in all the [extensions](#extensions) (shown below) which are used to reference the documents and its resources.

Extension in [1-2 Medication Dispense document](Bundle-1-2-MedicationDispense.json.html) to reference the 1-1 Medication Treatment Plan document (`externalDocumentId`) and its MedicationStatement (`id`):    
`MedicationDispense.extension:treatmentPlan`

``` json
  {
    "extension" : [
      {
        "url" : "id",
        "valueIdentifier" : {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
        }
      },
      {
        "url" : "externalDocumentId",
        "valueIdentifier" : {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:7aa20b27-eac0-4fef-a7b9-b10196718b9f"
        }
      }
    ],
    "url" : "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
  }
```


### Extensions 
The following table shows which extension can be used in which document. It shows which resource refers to which document (with its resource).

<table class="table table-bordered">
  <tbody>
    <tr>
      <th>Documents</th>
      <th>Resources</th>
      <td><a href="StructureDefinition-ch-emed-ext-treatmentplan.html"><strong>CH EMED Extension Treatment Plan</strong></a><br>Extension to reference an external <strong>MedicationStatement</strong> and the <strong>MTP</strong> that contains it</td>
      <td><a href="StructureDefinition-ch-emed-ext-dispense.html"><strong>CH EMED Extension Dispense</strong></a><br>Extension to reference an external <strong>MedicationDispense</strong>/ <strong>MedicationAdministration</strong> and the <strong>DIS</strong> that contains it</td>
      <td><a href="StructureDefinition-ch-emed-ext-prescription.html"><strong>CH EMED Extension Prescription</strong></a><br>Extension to reference an external <strong>MedicationRequest</strong> and the <strong>PRE</strong> that contains it</td>
      <td><a href="StructureDefinition-ch-emed-ext-pharmaceuticaladvice.html"><strong>CH EMED Extension Pharmaceutical Advice</strong></a><br>Extension to reference an external <strong>Observation</strong> and the <strong>PADV</strong> that contains it</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-document-medicationtreatmentplan.html">MTP</a></td>
      <td><a href="StructureDefinition-ch-emed-medicationstatement.html">MedicationStatement (MTP)</a></td>
      <td><em>no self-reference</em></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="2"><a href="StructureDefinition-ch-emed-document-medicationdispense.html">DIS</a></td>
      <td><a href="StructureDefinition-ch-emed-medicationdispense.html">MedicationDispense (DIS)</a></td>
      <td><code>MedicationDispense.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><em>no self-reference</em></td>
      <td><code>MedicationDispense.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><code>MedicationDispense.</code><br><code>extension:pharmaceuticalAdvice</code><br>-> PADV & Observation</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-medicationadministration.html">MedicationAdministration (DIS)</a></td>
      <td><code>MedicationAdministration.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><em>no self-reference</em></td>
      <td><code>MedicationAdministration.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><code>MedicationAdministration.</code><br><code>extension:pharmaceuticalAdvice</code><br>-> PADV & Observation</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-document-medicationprescription.html">PRE</a></td>
      <td><a href="StructureDefinition-ch-emed-medicationrequest.html">MedicationRequest (PRE)</a></td>
      <td><code>MedicationRequest.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td></td>
      <td><em>no self-reference</em></td>
      <td></td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-document-pharmaceuticaladvice.html">PADV</a></td>
      <td><a href="StructureDefinition-ch-emed-observation.html">Observation (PADV)</a></td>
      <td><code>Observation.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><code>Observation.</code><br><code>extension:dispense</code><br>-> DIS & MedicationDispense/<br>MedicationAdministration</td>
      <td><code>Observation.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><em>no self-reference</em></td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-document-medicationcard.html">CARD</a></td>
      <td><a href="StructureDefinition-ch-emed-medicationstatement-card.html">MedicationStatement (CARD)</a></td>
      <td><code>MedicationStatement.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td rowspan="6"><a href="StructureDefinition-ch-emed-document-medicationlist.html">LIST</a></td>
      <td><a href="StructureDefinition-ch-emed-medicationstatement-list.html">MedicationStatement (LIST)</a>,<br><a href="StructureDefinition-ch-emed-medicationstatement-changed-list.html">MedicationStatement Changed (LIST)</a></td>
      <td><code>MedicationStatement.</code><br><code>extension:parentDocument</code><br>-> MTP & MedicationStatement</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-medicationdispense-list.html">MedicationDispense (LIST)</a></td>
      <td><code>MedicationDispense.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><code>MedicationDispense.</code><br><code>extension:parentDocument</code><br>-> DIS & MedicationDispense</td>
      <td><code>MedicationDispense.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><code>MedicationDispense.</code><br><code>extension:pharmaceuticalAdvice</code><br>-> PADV & Observation</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-medicationadministration-list.html">MedicationAdministration (LIST)</a></td>
      <td><code>MedicationAdministration.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><code>MedicationAdministration.</code><br><code>extension:parentDocument</code><br>-> DIS & MedicationAdministration</td>
      <td><code>MedicationAdministration.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><code>MedicationAdministration.</code><br><code>extension:pharmaceuticalAdvice</code><br>-> PADV & Observation</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-medicationrequest-list.html">MedicationRequest (LIST)</a>,<br><a href="StructureDefinition-ch-emed-medicationrequest-changed-list.html">MedicationRequest Changed (LIST)</a></td>
      <td><code>MedicationRequest.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td></td>
      <td><code>MedicationRequest.</code><br><code>extension:parentDocument</code><br>-> PRE & MedicationRequest</td>
      <td></td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ch-emed-observation-list.html">Observation (LIST)</a></td>
      <td><code>Observation.</code><br><code>extension:treatmentPlan</code><br>-> MTP & MedicationStatement</td>
      <td><code>Observation.</code><br><code>extension:dispense</code><br>-> DIS & MedicationDispense/<br>MedicationAdministration</td>
      <td><code>Observation.</code><br><code>extension:prescription</code><br>-> PRE & MedicationRequest</td>
      <td><code>Observation.</code><br><code>extension:parentDocument</code><br>-> PADV & Observation</td>
    </tr>
  </tbody>
</table>
