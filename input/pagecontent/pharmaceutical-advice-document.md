The **Pharmaceutical Advice document** is a document in which health professionals track important observations (with the explicit consent of the patient), in regards to medication use (ONE).

* IPAG report: eMedicationComment
* IHE Pharmacy Profil: PADV (Pharmacy Pharmaceutical Advice)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="pharmaceutical-advice-document.png" caption="Fig.: Pharmaceutical Advice document" width="40%" %}

* Profile: [Pharmaceutical Advice document](StructureDefinition-ch-emed-document-pharmaceuticaladvice.html)
* Example Pharmaceutical Advice document (xml): [2-2](Bundle-2-2-PharmaceuticalAdvice.xml.html)