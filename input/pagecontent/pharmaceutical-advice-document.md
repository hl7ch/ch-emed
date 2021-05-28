The **Pharmaceutical Advice document** is a document in which health professionals track important observations (with the explicit consent of the patient), in regards to medication use (ONE).

* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eMedicationComment
* [IHE Pharmacy Technical Framework Supplement: Community Pharmaceutical Advice (PADV)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_PADV.pdf)

This Implementation Guide describes the following two Use Cases: 
1. Modifying an existing item (medication)
2. Adding a comment on an existing item

### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="pharmaceutical-advice-document.png" caption="Fig.: Pharmaceutical Advice document" width="40%" %}

### UseCase

### Modifying an existing item (medication)
* Change of medication ([CHANGE](ValueSet-ihe-pharmaceuticaladvicestatuslist.html))
   * [Example](Bundle-PharmaceuticalAdvice-ChangeDosage.html) with dosage change: 1 tablet in the morning instead of 0.5 tablet (as decided in use case step 1-1) 
* Refusal the medication until further discussion ([REFUSE](ValueSet-ihe-pharmaceuticaladvicestatuslist.html))
* Definite cancelation of the medication ([CANCEL](ValueSet-ihe-pharmaceuticaladvicestatuslist.html))
   * [Example](Bundle-2-2-PharmaceuticalAdvice.html) from use case step 2-2: Medication is being stopped due to adverse medication reaction (dry cough)

### Adding a comment on an existing item
* Comment on medication ([COMMENT](ValueSet-ihe-pharmaceuticaladvicestatuslist.html))

#### Example instances
* 2-2 Pharmaceutical Advice document: [XML](Bundle-2-2-PharmaceuticalAdvice.xml.html), [JSON](Bundle-2-2-PharmaceuticalAdvice.json.html)

### Profiles
* [CH EMED Pharmaceutical Advice Document Profile](StructureDefinition-ch-emed-document-pharmaceuticaladvice.html)
* [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [CH EMED Observation Profile](StructureDefinition-ch-emed-observation.html)
