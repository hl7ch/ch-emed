# Change Log for Implementation Guide CH EMED
All notable changes to this project will be documented in this file.   

## v2.0.0 - 2021-xx-xx
 
### Added
* [#73](https://github.com/ehealthsuisse/ch-emed/issues/73): Add warning if non-recommended timing-event codes are used in the structured dosage.
   * [CH EMED Dosage Structured Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-dosage-structured.html) 
* [#76](https://github.com/ehealthsuisse/ch-emed/issues/76): Elaboration of the repeated dispense.
   * [Additional tab with detailed description](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/repeated-dispense.html) 
   * Add element `MedicationRequest.dispenseRequest.validityPeriod` to be able to represent possible use cases ([profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationrequest.html), [mapping to CDA](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationrequest-mappings.html#mappings-for-cda-r2-http-hl7-org-v3-cda))

   
### Changed / Updated
* [#64](https://github.com/ehealthsuisse/ch-emed/issues/64): Dosage.timing.repeat.bounds[x] restricted to Period (start/end) instead of Duration, Range, Period to be equivalent to CDA.
   * [CH EMED Dosage Structured Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-dosage-structured.html)
   * [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
   * [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
* [#75](https://github.com/ehealthsuisse/ch-emed/issues/75): Set mustSupport = true for patient (Composition.subject) and author (Composition.author) of the Medication Card document, because they belong to the minimal data set of IPAG.
   * [CH EMED Medication Card Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-medicationcard.html)
* [#74](https://github.com/ehealthsuisse/ch-emed/issues/74): Change the description of the identifiers of MedicationStatement, MedicationRequest, MedicationDispense and Observation (clear naming without relation to the naming of the equivalent CDA element).
   * [CH EMED MedicationStatement Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationstatement.html)
   * [CH EMED MedicationRequest Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationrequest.html)
   * [CH EMED MedicationDispense Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationdispense.html) 
   * [CH EMED Observation Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-observation.html)
* [#62](https://github.com/ehealthsuisse/ch-emed/issues/62): Provide a [separate paragraph](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/index.html#must-support) on the flag mustSupport on the front page of the IG.
* [#76](https://github.com/ehealthsuisse/ch-emed/issues/62): Set minimum cardinality for element `MedicationRequest.dispenseRequest.numberOfRepeatsAllowed` (and `MedicationRequest.dispenseRequest`) back to 0, according to changes in CDA.
   * [CH EMED MedicationRequest Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationrequest.html)

 
### Fixed
* [#63](https://github.com/ehealthsuisse/ch-emed/issues/63): Typo in constraint "ch-emed-sect-annot"
   * [CH EMED Medication Prescription Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-medicationprescription.html)
* [#66](https://github.com/ehealthsuisse/ch-emed/issues/66): Removed element Organization.telecom with the value 'nullFlavor' (extension), if no value is set, the element will not be represented.
   * [Organization Hausarzt](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/Organization-Hausarzt.html)
* [#71](https://github.com/ehealthsuisse/ch-emed/issues/71): Typo in constraint "ch-emed-sect-padv"
   * [CH EMED Pharmaceutical Advice Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [#69](https://github.com/ehealthsuisse/ch-emed/issues/63): Wrong data in example 2-6 Medication Prescription document (base64 pdf, MedicationRequest.dispenseRequest)
   * [2-6 Medication Prescription document](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/Bundle-2-6-MedicationPrescription.html) 
