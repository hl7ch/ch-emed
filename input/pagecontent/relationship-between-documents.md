In order to represent the relationship between the individual eMedication documents and their entries (MedicationStatement, MedicationDispense, MedicationRequest, Observation), [extensions](#extensions) referencing the document and its entry(s) are defined. These references are based on the usage of the [identifiers](#identifiers) from the document its entries.

The following figure illustrates the documents from the use case ([DE](usecase-german.html), [FR](usecase-french.html)) and schematically shows this referencing, which depicts the relationship between the documents.

{% include img.html img="overview-relationships.png" caption="Fig.: Schematic overview of the relationship between the documents from the use case" width="100%" %}

### Identifiers
It is specified to use UUIDs as identifiers, for both the document and entry identifiers.

Example: [1-1 Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.html)

Bundle.identifier/Composition.identifier
``` json
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
  }
```

MedicationStatement.identifier (in this example it is the same value as the Bundle.identifier/Composition.identifier, but it does not have to be that way)
``` json
  "identifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
  }
```

Extension pairs containing these identifiers are used in the extensions (shown below) that reference the documents and its entries.

Example: [1-2 Medication Dispense document]() referencing the 1-1 Medication Treatment Plan document (`externalDocumentId`) and its MedicationStatement (`id`)

MedicationDispense.extension:treatmentPlan

``` json
  {
    "extension" : [
      {
        "url" : "id",
        "valueIdentifier" : {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
        }
      },
      {
        "url" : "externalDocumentId",
        "valueIdentifier" : {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
        }
      }
    ],
    "url" : "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentplan"
  }
```

For representing UUIDs the `system` needs to be `urn:ietf:rfc:3986` as described [here](https://hl7.org/fhir/R4/datatypes.html#:~:text=If%20the%20identifier,of%20some%20kind). The `value` has to start with `urn:uuid:`.

### Extensions 
The following table shows which extension can be used in which document. It shows which entry refers to which document (with its entry).

{:class="table table-bordered"}
| Extension | MTP<br>([MedicationStatement](StructureDefinition-ch-emed-medicationstatement.html)) | DIS<br>([MedicationDispense](StructureDefinition-ch-emed-medicationdispense.html)) | PRE<br>([MedicationRequest](StructureDefinition-ch-emed-medicationrequest.html)) | PADV<br>([Observation](StructureDefinition-ch-emed-observation.html)) | CARD<br>([MedicationStatement](StructureDefinition-ch-emed-medicationstatement-card.html)) |
| --- | --- | --- | --- | --- | --- | --- |
| [CH EMED Extension Treatment Plan](StructureDefinition-ch-emed-ext-treatmentplan.html)<br>Extension to reference an external **MedicationStatement** and the **MTP** that contains it | _no self-reference_ | MedicationDispense.<br>extension:treatmentPlan<br>-> MTP & MedicationStatement | MedicationRequest.<br>extension:treatmentPlan<br>-> MTP & MedicationStatement | Observation.<br>extension:treatmentPlan<br>-> MTP & MedicationStatement | MedicationStatement.<br>extension:treatmentPlan<br>-> MTP & MedicationStatement |
| [CH EMED Extension Dispense](StructureDefinition-ch-emed-ext-dispense.html)<br>Extension to reference an external **MedicationDispense** and the **DIS** that contains it |  | _no self-reference_ |  | Observation.<br>extension:dispense<br>-> DIS & MedicationDispense |  |
| [CH EMED Extension Prescription](StructureDefinition-ch-emed-ext-prescription.html)<br>Extension to reference an external **MedicationRequest** and the **PRE** that contains it |  | MedicationDispense.<br>extension:prescription<br>-> PRE & MedicationRequest | _no self-reference_ | Observation.<br>extension:prescription<br>-> PRE & MedicationRequest |  |
| [CH EMED Extension Pharmaceutical Advice](StructureDefinition-ch-emed-ext-pharmaceuticaladvice.html)<br>Extension to reference an external **Observation** and the **PADV** that contains it |  | MedicationDispense.<br>extension:pharmaceuticalAdvice<br>-> PADV & Observation |  | _no self-reference_ |  |
