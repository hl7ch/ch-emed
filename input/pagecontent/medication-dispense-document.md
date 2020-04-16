The **Medication Dispense document** describes the direct dispensation of ONE drug to a patient or legitimized third party with regard to a later application of the product by a qualified health professional.
    
* IPAG report: eDispense
* IHE Pharmacy Profil: DIS (Dispense)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-dispense-document.png" caption="Fig.: Medication Dispense document" width="40%" %}

* Profile: [Medication Dispense document](StructureDefinition-ch-emed-document-medicationdispense.html)
* Example Medication Dispense document (xml): [1-2](Bundle-1-2-MedicationDispense.xml.html), [2-4](Bundle-2-4-MedicationDispense.xml.html)