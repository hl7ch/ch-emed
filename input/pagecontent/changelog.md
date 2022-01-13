
All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 2 Ballot

[Resolution desk](https://github.com/hl7ch/ch-emed/blob/master/1.0.0_STU2-ballot.md)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#72](https://github.com/ehealthsuisse/ch-emed/issues/72) Representation of status "in reserve" (InRes) for a medication is missing.

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).
 
#### Added
* [#73](https://github.com/ehealthsuisse/ch-emed/issues/73): Add warning if non-recommended timing-event codes are used in the structured dosage.
   * [CH EMED Dosage Structured Profile](StructureDefinition-ch-emed-dosage-structured.html) 
* [#76](https://github.com/ehealthsuisse/ch-emed/issues/76): Elaboration of the repeated dispense.
   * [Additional tab with detailed description](repeated-dispense.html) 
   * Add element `MedicationRequest.dispenseRequest.validityPeriod` to be able to represent possible use cases ([profile](StructureDefinition-ch-emed-medicationrequest.html), [mapping to CDA](StructureDefinition-ch-emed-medicationrequest-mappings.html#mappings-for-cda-r2-http-hl7-org-v3-cda))

#### Changed / Updated
* [#64](https://github.com/ehealthsuisse/ch-emed/issues/64): Dosage.timing.repeat.bounds[x] restricted to Period (start/end) instead of Duration, Range, Period to be equivalent to CDA.
   * [CH EMED Dosage Structured Profile](StructureDefinition-ch-emed-dosage-structured.html)
   * [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
   * [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
* [#75](https://github.com/ehealthsuisse/ch-emed/issues/75): Set mustSupport = true for patient (Composition.subject) and author (Composition.author) of the Medication Card document, because they belong to the minimal data set of IPAG.
   * [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html)
* [#74](https://github.com/ehealthsuisse/ch-emed/issues/74): Change the description of the identifiers of MedicationStatement, MedicationRequest, MedicationDispense and Observation (clear naming without relation to the naming of the equivalent CDA element).
   * [CH EMED MedicationStatement Profile](StructureDefinition-ch-emed-medicationstatement.html)
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
   * [CH EMED MedicationDispense Profile](StructureDefinition-ch-emed-medicationdispense.html) 
   * [CH EMED Observation Profile](StructureDefinition-ch-emed-observation.html)
* [#62](https://github.com/ehealthsuisse/ch-emed/issues/62): Provide a [separate paragraph](index.html#mustsupport) on the flag mustSupport on the front page of the IG.
* [#76](https://github.com/ehealthsuisse/ch-emed/issues/62): Set minimum cardinality for element `MedicationRequest.dispenseRequest.numberOfRepeatsAllowed` (and `MedicationRequest.dispenseRequest`) back to 0, according to changes in CDA.
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
* [#80](https://github.com/ehealthsuisse/ch-emed/issues/80): Update references for the document author (Composition.author)
   * Change references for Composition.author from 'CH Core Practitioner Profile EPR' to 'CH EMED Practitioner Profile' and from 'CH Core Practitioner Role Profile' to 'CH EMED PractitionerRole Profile'.
      * [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html) 
      * [CH EMED Medication Dispense Composition Profile](StructureDefinition-ch-emed-composition-medicationdispense.html)
      * [CH EMED Medication List Composition Profile](StructureDefinition-ch-emed-composition-medicationlist.html)
      * [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
      * [CH EMED Medication Treatment Plan Composition Profile](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)
      * [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
   * Add profiles (derived from CH Core EPR profiles)
      * [CH EMED Practitioner Profile](StructureDefinition-ch-emed-practitioner.html): Practitioner.address 1..*, set MS
      * [CH EMED PractitionerRole Profile](StructureDefinition-ch-emed-practitionerrole.html): PractitionerRole.practitioner 1..1   

#### Fixed
* [#63](https://github.com/ehealthsuisse/ch-emed/issues/63): Typo in constraint "ch-emed-sect-annot"
   * [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
* [#66](https://github.com/ehealthsuisse/ch-emed/issues/66): Removed element Organization.telecom with the value 'nullFlavor' (extension), if no value is set, the element will not be represented.
   * [Organization Hausarzt](Organization-Hausarzt.html)
* [#71](https://github.com/ehealthsuisse/ch-emed/issues/71): Typo in constraint "ch-emed-sect-padv"
   * [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [#69](https://github.com/ehealthsuisse/ch-emed/issues/63): Wrong data in example 2-6 Medication Prescription document (base64 pdf, MedicationRequest.dispenseRequest)
   * [2-6 Medication Prescription document](Bundle-2-6-MedicationPrescription.html) 


### STU 1 Ballot

[Resolution desk](https://github.com/hl7ch/ch-emed/blob/master/0.2.0_STU1-informative-ballot.md)