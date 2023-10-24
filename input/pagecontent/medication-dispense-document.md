The **Medication Dispense document** describes the direct dispensation of ONE drug to a patient or legitimized third party with regard to a later application of the product by a qualified health professional.
    
* [IPAG report](https://www.e-health-suisse.ch/fileadmin/user_upload/Dokumente/2017/D/170607_Bericht_eMedikation_IPAG.pdf): eDispense
* [IHE Pharmacy Technical Framework Supplement: Community Dispense (DIS)](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_DIS.pdf)


### FHIR document (Bundle)
This exchange format is defined as a document type that corresponds to a Bundle as a FHIR resource. A Bundle has a list of entries. The first entry is the Composition, in which all contained entries are then referenced.

{% include img.html img="medication-dispense-document.png" caption="Fig.: Medication Dispense document" width="40%" %}

#### Example instances
* 1-2 Medication Dispense document: [XML](Bundle-1-2-MedicationDispense.xml.html), [JSON](Bundle-1-2-MedicationDispense.json.html)
* 2-4 Medication Dispense document: [XML](Bundle-2-4-MedicationDispense.xml.html), [JSON](Bundle-2-4-MedicationDispense.json.html)

### Profiles
* [CH EMED Medication Dispense Document](StructureDefinition-ch-emed-document-medicationdispense.html)
* [CH EMED Medication Dispense Composition](StructureDefinition-ch-emed-composition-medicationdispense.html)
* [CH EMED MedicationDispense (DIS)](StructureDefinition-ch-emed-medicationdispense.html)
* [CH EMED Medication (MedicationDispense)](StructureDefinition-ch-emed-medication-medicationdispense.html)
* [CH EMED Dosage](StructureDefinition-ch-emed-dosage.html)
* [CH EMED Dosage Split](StructureDefinition-ch-emed-dosage-split.html)
