In order to maintain the contextual knowledge (document context) also in a single resource and to be able to use it in the further eMedication process (e.g. LIST) as a standalone resource, the [author(s)](#authors), as well as the [timestamp](#timestamp), are documented at the level of the document and the individual entries (resources).

### Author(s)
When creating/publishing an eMedication document, there MAY be one or more authors. A differentiation is made between the **author of the document** and the **author of the medical decision**. Use cases are described below to illustrate these different cases for the various document types and to show where the corresponding information is mapped.

#### One Author
*The general practitioner Dr. med. Familien Hausarzt recommends medication treatment with Triatec to Monika Wegmüller. He documents his therapy decision using the [Medication Treatment Plan document](Bundle-1-1-MedicationTreatmentPlan.html).*

In this case, the author of the document and the medical decision is the same. In the eMedication document Dr. med. Familien Hausarzt is mapped twice.
* **Author of the document**: Composition.author (*Dr. med. Familien Hausarzt*)
* **Author of the medical decision**: MedicationStatement.informationSource (*Dr. med. Familien Hausarzt*)

#### Different Authors

##### "Elementary" Documents (MTP, PRE, DIS, PADV)
*The specialist Dr. med. Sandra Meier orders Monika Wegmüller to be treated with Aspirin and also issues a prescription. The medical practice assistant Andrew Stabilo creates the corresponding eMedication documents (MTP, PRE).*

In this case, the author of the document and the author of the medical decision are different. In the eMedication documents, these two authors are mapped differently.
* **Author of the document**: Composition.author (*Andrew Stabilo*)
* **Author of the medical decision**: MedicationStatement.informationSource (MTP) & MedicationRequest.requester (PRE) (*Dr. med. Sandra Meier*)

##### "Overview" Document CARD
*The pharmacist Peter Pharma creates a Medication Plan document for Mona Muster, which provides the patient with an overview of her current medication. Mona Muster is currently taking Aspirin cardio. This medication was initiated and authored by the general practitioner Dr. med. Familien Hausarzt (MTP). The specialist Dr. med. Sandra Meier later adjusted the dosage and the medical practice assistant Andrew Stabilo documented this accordingly (PADV).*

* **Author document**: Composition.author (*Peter Pharma*)
* For each entry:
   * **Author of the last medical decision**: MedicationStatement.informationSource (*Dr. med. Sandra Meier*)
   * **Author of the last original document** (if different from the author of the medical decision): MedicationStatement.extension:authorDocument (*Andrew Stabilo*)

##### "Overview" Document LIST
*The pharmacist wants to get an overview of Mona Muster's current medication and therefore requests his Medication List document. (Same use case as described above for CARD.)*

* **Author document**: The Medication List document is a dynamically generated document, generally created by a machine/software; Composition.author (*Device*)
* For each entry:
   * **Author of the medical decision**
      * MTP: MedicationStatement.informationSource (*Dr. med. Familien Hausarzt*)
      * PRE: MedicationRequest.requester
      * DIS: MedicationDispense.performer.actor, MedicationAdministration.performer.actor
      * PADV: Observation.performer (*Dr. med. Sandra Meier*)
   * **Author of the original document** (if different from the author of the medical decision)
      * MTP: MedicationStatement.extension:authorDocument (*no value because identical with author medical decision*)
      * PRE: MedicationRequest.extension:authorDocument
      * DIS: MedicationDispense.extension:authorDocument, MedicationAdministration.extension:authorDocument
      * PADV: Observation.extension:authorDocument (*Andrew Stabilo*)

#### Overview Table

{:class="table table-bordered"}
| Document | Author of the document<br>(person &#124; device) | Author of the medical decision<br>(person) | Author original document; if different from the author of the medical decision<br>(person) |
| --- | --- | --- | --- |
| **MTP** | Composition.author 1..<br>(person 1.. &#124; device 0..) | MedicationStatement.informationSource 1.. | - |
| **PRE** | Composition.author 1..<br>(person 1.. &#124; device 0..) | MedicationRequest.requester 1.. | - |
| **DIS** | Composition.author 1..<br>(person 1.. &#124; device 0..) | MedicationDispense.performer.actor 1..<br>MedicationAdministration.performer.actor 1.. | - |
| **PADV** | Composition.author 1..<br>(person 1.. &#124; device 0..) | Observation.performer 1.. | - |
| **LIST** | Composition.author 1..<br>(device, which dynamically<br>generates the document) | MedicationStatement.informationSource 1..<br>MedicationRequest.requester 1..<br>MedicationDispense.performer.actor 1..<br>MedicationAdministration.performer.actor 1..<br>Observation.performer 1.. | MedicationStatement.extension:authorDocument 0..<br>MedicationRequest.extension:authorDocument 0..<br>MedicationDispense.extension:authorDocument 0..<br>MedicationAdministration.extension:authorDocument 0..<br>Observation.extension:authorDocument 0.. |
| **CARD** | Composition.author 1..<br>(person or device) | MedicationStatement.informationSource* 1.. | MedicationStatement.extension:authorDocument* 0.. |

*: The CARD is an aggregation of all medications, respectively all documents, which MAY have had different authors. The “last author” (author of the last input for this treatment) is indicated in each case.

### Timestamp
* The document's creation date and time is mapped for all documents in Bundle.timestamp and Composition.date.   
* In addition, a timestamp is specified at entry level:
   * [MedicationStatement.dateAsserted](StructureDefinition-ch-emed-medicationstatement.html) (1..1) When the statement was asserted
   * [MedicationRequest.authoredOn](StructureDefinition-ch-emed-medicationrequest.html) (1..1) When request was initially authored
   * [MedicationDispense.whenHandedOver](StructureDefinition-ch-emed-medicationdispense.html) (1..1) When product was given out
   * [MedicationAdministration.effective[x]](StructureDefinition-ch-emed-medicationadministration.html) (1..1) Start and end time of administration
   * [Observation.issued](StructureDefinition-ch-emed-observation.html) (1..1) Date/Time this version was made available
