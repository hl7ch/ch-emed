The **Pharmaceutical Advice document** is a document in which health professionals track important observations (with the explicit consent of the patient), in regards to medication use (ONE).

* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eMedicationComment
* [IHE Pharmacy Technical Framework Supplement: Community Pharmaceutical Advice (PADV)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PADV.pdf)

This implementation guide describes the following two use cases: 
   - Modifying an existing medication
   - Adding a comment on an existing medication

### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="pharmaceutical-advice-document.png" caption="Fig.: Pharmaceutical Advice document" width="40%" %}

#### Example instances
* 2-2 Pharmaceutical Advice document: [XML](Bundle-2-2-PharmaceuticalAdvice.xml.html), [JSON](Bundle-2-2-PharmaceuticalAdvice.json.html)
* Pharmaceutical Advice document with dosage change: [XML](Bundle-PharmaceuticalAdvice-ChangeDosage.xml.html), [JSON](Bundle-PharmaceuticalAdvice-ChangeDosage.json.html)

### Profiles
* [CH EMED Pharmaceutical Advice Document](StructureDefinition-ch-emed-document-pharmaceuticaladvice.html)
* [CH EMED Pharmaceutical Advice Composition](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [CH EMED Observation (PADV)](StructureDefinition-ch-emed-observation.html)

### Use Cases
A Pharmaceutical Advice document contains one Observation. The Observation refers to ONE already existing document ([Medication Treatment Plan](StructureDefinition-ch-emed-ext-treatmentplan.html), [Medication Prescription](StructureDefinition-ch-emed-ext-prescription.html), [Medication Dispense](StructureDefinition-ch-emed-ext-dispense.html)) and defines ONE action (Observation.code) to be performed on the referenced medication.

#### Modifying an existing medication
* [CHANGE](http://fhir.ch/ig/ch-term/ValueSet-ihe-pharmaceuticaladvicestatuslist.html)
   * The planning of the medication has changed, e.g. _dosage change: 1 tablet in the morning instead of 0.5 tablet_. The Observation ([example](Observation-Obs-ChangeDosage.html)) refers the original Medication Treatment Plan document and a new MedicationStatement ([example](MedicationStatement-MedStatTriatec-ChangeDosage.html)) with the changed information.
      * [Example PADV document](Bundle-PharmaceuticalAdvice-ChangeDosage.html) with _dosage change: 1 tablet in the morning instead of 0.5 tablet_ (as decided in use case step 1-1) 
   * The prescription can be dispensed after an indicated change, e.g. _generic medication: Amlodipine instead of Norvasc_. The Observation ([example](Observation-PharmaceuticalAdvice-ChangeMedicament.html)) refers the original Medication Prescription document and a new MedicationRequest ([example](MedicationRequest-MedReq-ChangeMedication.html)) with the changed information.
* [REFUSE](http://fhir.ch/ig/ch-term/ValueSet-ihe-pharmaceuticaladvicestatuslist.html)
   * This medication should not be taken/prescribed/dispensed. The Observation refers the original Medication Treatment Plan document and includes the refuse as annotation.
   * The prescription (provisional, not yet confirmed or confirmed) should not have been already dispensed, even partially. The Observation refers the original Medication Prescription document and includes the refuse as annotation.
* [CANCEL](http://fhir.ch/ig/ch-term/ValueSet-ihe-pharmaceuticaladvicestatuslist.html)
   * Medication is definitively stopped (not active anymore). The Observation refers the original Medication Treatment Plan document and includes the cancellation as annotation.
      * [Example PADV document](Bundle-2-2-PharmaceuticalAdvice.html) from use case step 2-2: Medication is being stopped due to adverse medication reaction (dry cough)
   * No dispense of this item can be performed anymore (or no dispense at all if the prescription was still not approved). The Observation refers the original Medication Prescription document and includes the cancellation as annotation.
   * No dispense of the related prescription item can occur anymore and the patient has to stop taking this medication. The Observation refers the original Medication Dispense document and includes the cancellation as annotation.

#### Adding a comment on an existing medication
* [COMMENT](http://fhir.ch/ig/ch-term/ValueSet-ihe-pharmaceuticaladvicestatuslist.html)
   * The Observation refers the original document (Medication Treatment Plan document, Medication Prescription document, Medication Dispense document) and includes a general comment as annotation.

