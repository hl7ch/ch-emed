### Overview
When creating/publishing an eMedication document, there may be one or more authors. A differentiation is made between the **author of the document** and the **author of the medical decision**. Use cases are described below to illustrate these different cases for the various document types and to show where the corresponding information is mapped.

### "Elementary" Documents (MTP, PRE, DIS, PADV)

#### One Author
*The general practitioner Dr. med. Familien Hausarzt recommends medication treatment with Triatec to Monika Wegmüller. He documents his therapy decision using the [Medication Treatment Plan document](Composition-1-1-MedicationTreatmentPlan.html).*

In this case, the author of the document and the medical decision is the same. In the eMedication document Dr. med. Familien Hausarzt is mapped once.
* **Author document & author medical decision**: Composition.author

#### Different Authors
*The specialist Dr. med. Sandra Meier orders Monika Wegmüller to be treated with Aspirin and also issues a prescription. The medical practice assistant Andrew Stabilo creates the corresponding eMedication documents (Medication Treatment Plan document, Medication Prescription document).*

In this case, the author of the document and the author of the medical decision are different. In the eMedication documents, these two authors are mapped differently.
* **Author document**: Composition.author
* **Author medical decision**: Composition.section.author

#### Overview different levels

{:class="table table-bordered"}
| Document level | One author/person | Different authors/persons |
| --- | --- | --- |
| Document (Composition.author) | Author document & author medical decision | Author document |
| Section (Composition.section.author) | x | Author medical decision |
| Entries (MedicationStatement, MedicationRequest, MedicationDispense, Observation) | x | x |


### "Overview" Documents (CARD, LIST)

#### Medication Card document
*The pharmacist creates a Medication Plan document for Mona Muster, which provides the patient with an overview of her current medication.*

* **Author document**: Composition.author
* **Author(s) medical decision(s)**: MedicationStatement.informationSource
* **Author(s) original document(s)** (if different from the author of the medical decision): MedicationStatement.extension:authorDocument

#### Medication List document
*The pharmacist wants to get an overview of Tim Muster's current medication and therefore requests his Medication List document.*

* **Author document**: The Medication List document is a dynamically generated document, generally created by a machine/software; Composition.author
* **Author(s) medical decision(s)**
   * MTP: MedicationStatement.informationSource
   * PRE: MedicationRequest.performer
   * DIS: MedicationDispense.performer.actor
   * PADV: Observation.performer
* **Author(s) original document(s)** (if different from the author of the medical decision)
   * MTP: MedicationStatement.extension:authorDocument
   * PRE: MedicationRequest.extension:authorDocument
   * DIS: MedicationDispense.extension:authorDocument
   * PADV: Observation.extension:authorDocument

#### Overview different levels

{:class="table table-bordered"}
| Document level | Medication Card document | Medication List document |
| --- | --- | --- |
| Document (Composition.author) | Author document | Author document (Device, which dynamically generates the document) |
| Section (Composition.section.author) | (x) | (x) |
| Entries: Author medical decision | MedicationStatement.informationSource | MedicationStatement.informationSource, <br>MedicationRequest.performer, <br>MedicationDispense.performer.actor, <br>Observation.performer |
| Entries: Author original document (if different from the author of the medical decision) | MedicationStatement.extension:authorDocument | MedicationStatement.extension:authorDocument, <br>MedicationRequest.extension:authorDocument, <br>MedicationDispense.extension:authorDocument, <br>Observation.extension:authorDocument |


