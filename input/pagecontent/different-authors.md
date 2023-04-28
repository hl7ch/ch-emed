### Overview
When creating/publishing an eMedication document, there may be one or more authors. A differentiation is made between the **author of the document** and the **author of the medical decision**. Use cases are described below to illustrate these different cases for the various document types and to show where the corresponding information is mapped.

### "Elementary" Documents (MTP, PRE, DIS, PADV)

#### One Author
*The general practitioner Dr. med. Familien Hausarzt recommends medication treatment with Triatec to Monika Wegmüller. He documents his therapy decision using the [Medication Treatment Plan document](Composition-1-1-Composition.html).*

In this case, the author of the document and the medical decision is the same. In the eMedication document Dr. med. Familien Hausarzt is mapped once.
* **Author document & author medical decision**: Composition.author (*Dr. med. Familien Hausarzt*)

#### Different Authors
*The specialist Dr. med. Sandra Meier orders Monika Wegmüller to be treated with Aspirin and also issues a prescription. The medical practice assistant Andrew Stabilo creates the corresponding eMedication documents (MTP, PRE).*

In this case, the author of the document and the author of the medical decision are different. In the eMedication documents, these two authors are mapped differently.
* **Author document**: Composition.author (*Andrew Stabilo*)
* **Author medical decision**: Composition.section.author (*Dr. med. Sandra Meier*)

#### Overview different levels

{:class="table table-bordered"}
| Document level | One author/person | Different authors/persons |
| --- | --- | --- |
| Document (Composition.author) | Author document & author medical decision (person) | Author document (person) |
| Section (Composition.section.author) | x | Author medical decision (person) |
| Entries (MedicationStatement, MedicationRequest, MedicationDispense, Observation) | x | x |


### "Overview" Documents (CARD, LIST)

#### Medication Card document
*The pharmacist Peter Pharma creates a Medication Plan document for Mona Muster, which provides the patient with an overview of her current medication. Mona Muster is currently taking Aspirin cardio. This medication was initiated and authored by the general practitioner Dr. med. Familien Hausarzt (MTP). The specialist Dr. med. Sandra Meier later adjusted the dosage and the medical practice assistant Andrew Stabilo documented this accordingly (PADV).*

* **Author document**: Composition.author (*Peter Pharma*)
* For each entry:
   * **Author last medical decision**: MedicationStatement.informationSource (*Dr. med. Sandra Meier*)
   * **Author last original document** (if different from the author of the medical decision): MedicationStatement.extension:authorDocument (*Andrew Stabilo*)

#### Medication List document
*The pharmacist wants to get an overview of Mona Muster's current medication and therefore requests his Medication List document. (Same use case as described above for CARD.)*

* **Author document**: The Medication List document is a dynamically generated document, generally created by a machine/software; Composition.author (*Device*)
* For each entry:
   * **Author medical decision**
      * MTP: MedicationStatement.informationSource (*Dr. med. Familien Hausarzt*)
      * PRE: MedicationRequest.requester
      * DIS: MedicationDispense.performer.actor
      * PADV: Observation.performer (*Dr. med. Sandra Meier*)
   * **Author original document** (if different from the author of the medical decision)
      * MTP: MedicationStatement.extension:authorDocument (*no value because identical with author medical decision*)
      * PRE: MedicationRequest.extension:authorDocument
      * DIS: MedicationDispense.extension:authorDocument
      * PADV: Observation.extension:authorDocument (*Andrew Stabilo*)

#### Overview different levels

{:class="table table-bordered"}
| Document level | Medication Card document | Medication List document |
| --- | --- | --- |
| Document (Composition.author) | Author document (person or device) | Author document (device, which dynamically generates the document) |
| Section (Composition.section.author) | x | x |
| Entries: Author medical decision | MedicationStatement.informationSource* (person) | MedicationStatement.informationSource (person), <br>MedicationRequest.requester (person), <br>MedicationDispense.performer.actor (person), <br>Observation.performer (person) |
| Entries: Author original document (if different from the author of the medical decision) | MedicationStatement.extension:authorDocument* (person) | MedicationStatement.extension:authorDocument (person), <br>MedicationRequest.extension:authorDocument (person), <br>MedicationDispense.extension:authorDocument (person), <br>Observation.extension:authorDocument (person) |   

_*: The CARD is an aggregation of all medications, respectively all documents, which may have had different authors. The "last author" (author of the last input for this treatment) is indicated in each case._

