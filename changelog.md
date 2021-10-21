# Change Log for Implementation Guide CH EMED
All notable changes to this project will be documented in this file.   

## v2.0.0 - 2021-xx-xx
 
### Added
* 

   
### Changed / Updated
* [#75](https://github.com/ehealthsuisse/ch-emed/issues/75): Set mustSupport = true for patient (Composition.subject) and author (Composition.author) of the Medication Card document, because they belong to the minimal data set of IPAG.
   * [CH EMED Medication Card Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-medicationcard.html)
* [#74](https://github.com/ehealthsuisse/ch-emed/issues/74): Change the description of the identifiers of MedicationStatement, MedicationRequest, MedicationDispense and Observation (clear naming without relation to the naming of the equivalent CDA element).
   * [CH EMED MedicationStatement Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationstatement.html)
   * [CH EMED MedicationRequest Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationrequest.html)
   * [CH EMED MedicationDispense Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-medicationdispense.html) 
   * [CH EMED Observation Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-observation.html)

 
### Fixed
* [#63](https://github.com/ehealthsuisse/ch-emed/issues/63): Typo in constraint "ch-emed-sect-annot"
   * [CH EMED Medication Prescription Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-medicationprescription.html)
* [#71](https://github.com/ehealthsuisse/ch-emed/issues/71): Typo in constraint "ch-emed-sect-padv"
   * [CH EMED Pharmaceutical Advice Composition Profile](http://build.fhir.org/ig/ehealthsuisse/ch-emed/branches/master/StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
