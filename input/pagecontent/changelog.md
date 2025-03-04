
All significant changes to this FHIR implementation guide will be documented on this page.   

* [#312](https://github.com/hl7ch/ch-emed/issues/312): Fix display value for [LOINC 57828-6](https://loinc.org/57828-6/) (PRESCRIPTIONS -> Prescription list)

### STU 5 Sequence - v5.0.0 (2024-12-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:

* [#294](https://github.com/hl7ch/ch-emed/issues/294): CH EMED Organization address

See also open issues on [GitHub](https://github.com/hl7ch/ch-core/issues).

#### Added
* [#272](https://github.com/hl7ch/ch-emed/issues/272): Add guidance for 'Relationship between documents'

#### Changed / Updated
* [#278](https://github.com/hl7ch/ch-emed/issues/278): Update the figures of the documents
* [#274](https://github.com/hl7ch/ch-emed/issues/274): Add profiles for Medication List document when the Composition entries come from changed entries (PADV): CHEMEDMedicationStatementChangedList and CHEMEDMedicationRequestChangedList
* [#283](https://github.com/hl7ch/ch-emed/issues/283): Relax min card for doseAndRate from 1 to 0 and fix FHIRPath in ch-dosage-3 constraint (DosageMedicationRequest)
* [#289](https://github.com/hl7ch/ch-emed/issues/289): Add extension parentDocument to the entries in 2-1 Medication List document
* [#301](https://github.com/hl7ch/ch-emed/issues/301): Add links to mentioned sections for better navigation
* [#298](https://github.com/hl7ch/ch-emed/issues/298): Update the descriptions for PADV use cases and the according examples
* [#297](https://github.com/hl7ch/ch-emed/issues/297): Update the descriptions of the examples

#### Fixed
* [#271](https://github.com/hl7ch/ch-emed/issues/271): Validation issue with display values fixed through new version of the IG publisher
* [#275](https://github.com/hl7ch/ch-emed/issues/275): Fix old link
* [#267](https://github.com/hl7ch/ch-emed/issues/267): Resolving inconsistencies between data set (use case) and PDF
* [#285](https://github.com/hl7ch/ch-emed/issues/285): Update slicing in Medication List document to allow validation of _changed_ entries
* [#288](https://github.com/hl7ch/ch-emed/issues/288): Typo
* [#300](https://github.com/hl7ch/ch-emed/issues/300) & [#292](https://github.com/hl7ch/ch-emed/issues/292): Define link from narrative to the binary (original representation)
* [#307](https://github.com/hl7ch/ch-emed/issues/307): Replace deprecated discriminator (`pattern` -> `value`) resp. removal of the redundant slice definition (inherited from parent profile)

#### Issues resolved without amendment (in IG)
* [#295](https://github.com/hl7ch/ch-emed/issues/295): Typo generated in narrative (tooling side)
* [#299](https://github.com/hl7ch/ch-emed/issues/299): Clarification of the links in the generated narrative of the examples
* [#279](https://github.com/hl7ch/ch-emed/issues/279): Publication issue with PlantUML


### STU 5 Sequence - v5.0.0-ballot (2024-05-16)

#### Added
* [#245](https://github.com/hl7ch/ch-emed/issues/245): Include EDQM Administration Method
* [#262](https://github.com/hl7ch/ch-emed/issues/262): Add extension to include the identifier of the last considered document (CARD)
* [#250](https://github.com/hl7ch/ch-emed/issues/250): Add nmol 'nanomole' (UCUM) and 413568008 'Application - unit of product usage (qualifier value)' (SCT) to VS UnitCode

#### Changed / Updated
* [#256](https://github.com/hl7ch/ch-emed/issues/256): Move all terminology to CH Term
   * Update the canonical URLs in the VS binding in the profiles
   * Fix links from internal (CH EMED) to external (CH Term) artifacts
* [#258](https://github.com/hl7ch/ch-emed/issues/258): CH Core base profiles as parent
* [#252](https://github.com/hl7ch/ch-emed/issues/252): SCT code 246205007 'Quantity (attribute)' instead of UCUM human annotation {Piece} 'Stk.'
* [#263](https://github.com/hl7ch/ch-emed/issues/263): Add additional constraints beside ch-dosage-1 to check, if the sequence number is present in split dosage elements
* [#269](https://github.com/hl7ch/ch-emed/issues/269): Remove discriminator for slicing Practitioner.identifier (coming from CH Core parent profile)
* [#268](https://github.com/hl7ch/ch-emed/issues/268): Relax max card for treatment reason from 1 to * (MedicationStatement, MedicationRequest, MedicationDispense, MedicationAdministration)

### STU 4 Sequence - v4.0.1 (2023-12-28)

* [#270](https://github.com/hl7ch/ch-core/issues/270): 4.0.1 Technical correction for invalid package

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:

* [#252](https://github.com/hl7ch/ch-emed/issues/252): SCT code for {Piece} (UCUM)
* [#250](https://github.com/hl7ch/ch-emed/issues/250): Split up units in 'units of presentation' and 'units of administration'
* [#245](https://github.com/hl7ch/ch-emed/issues/245): Include MOA (method of application)

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).

#### Added
* [#248](https://github.com/hl7ch/ch-emed/issues/248): Add SCT code 106181007 'Immunologic substance (substance)' to ValueSet ActivePharmaceuticalIngredient

#### Changed / Updated
* [#234](https://github.com/hl7ch/ch-emed/issues/234): Replacing UCUM codes with human readable annotations with SCT codes (ValueSet UnitCode)
   * {Dose} 'Dose' -> 408102007 'Unit dose (qualifier value)'
   * 10*6.{Unit} '(the number ten for arbitrary powers ^ 6) * Unit' -> 396186001 'Million unit (qualifier value)'
   * {Package} 'Package' -> 1681000175101 'Package - unit of product usage (qualifier value)'
   * 10*3.{Unit} 'Thousand Per * Unit' -> 2011000175108 'Thousand unit (qualifier value)'
   * {Unit} 'Unit' -> 767525000 'Unit (qualifier value)'
   * {Piece} 'Piece' -> not done yet, see [#252](https://github.com/hl7ch/ch-emed/issues/252)
* [#242](https://github.com/hl7ch/ch-emed/issues/242): Add MedicationAdministration to Medication Dispense document (DIS)
* [#241](https://github.com/hl7ch/ch-emed/issues/241): Add required author and timestamp elements on entry level, see details under 'Guidance - Authorship'
* [#233](https://github.com/hl7ch/ch-emed/issues/233): Remove the version (SCT Swiss extension) for SCT codings, where the code is from the international edition. (Only Composition.type DIS has a SCT code from the Swiss extension.)
* [#238](https://github.com/hl7ch/ch-emed/issues/238): List the data type profiles under tab profile

#### Fixed
* [#231](https://github.com/hl7ch/ch-emed/issues/231): Correct referenced identifier for Beloc Zok (in 2-7)
* [#228](https://github.com/hl7ch/ch-emed/issues/228): Correct the SNOMED CT code for DIS
* [#234](https://github.com/hl7ch/ch-emed/issues/234): Fix rules concerning collection (ch-obs-1 & ch-emed-comp-card/dis/list/pre/mtp/padv)

#### Issues resolved without amendment
* [#230](https://github.com/hl7ch/ch-emed/issues/230): Concerning extension from CH Core not CH EMED
* [#236](https://github.com/hl7ch/ch-emed/issues/236): Fix constraint for Composition.type
* [#246](https://github.com/hl7ch/ch-emed/issues/246): Fix typo
* [#243](https://github.com/hl7ch/ch-emed/issues/243): Document names
* [#244](https://github.com/hl7ch/ch-emed/issues/244): CH EMED extensions

### STU 4 Sequence - v4.0.0-ballot (2023-06-29)

#### Added
* [#176](https://github.com/hl7ch/ch-emed/issues/176): Adding extensions to LIST entries for referencing the parent document.
* [#177](https://github.com/hl7ch/ch-emed/issues/177): Adding an annotation section in the [Medication List Composition](StructureDefinition-ch-emed-composition-medicationlist.html), analogous to the other documents.
* [#210](https://github.com/hl7ch/ch-emed/issues/210): Clarification of the handling of the changed entries in case of an Observation CHANGE:
   * Add aggregation type 'referenced/bundled' to the references for the changed MedicationStatement/MedicationRequest.
   * Introducing of separate profiles for changed MedicationStatement/MedicationRequest (based on those used before) with the additional required reference back to the Observation.
* [#224](https://github.com/hl7ch/ch-emed/issues/224): Add SNOMED CT Swiss extension version.

#### Changed / Updated
* [#175](https://github.com/hl7ch/ch-emed/issues/175): Update Observation (PADV) for 'CHANGE'
   * Introducing the [Extension MedicationRequest Changed](StructureDefinition-ch-emed-ext-medicationrequest-changed.html) to the [Observation (PADV)](StructureDefinition-ch-emed-observation.html) to represent the changes in the context of a prescription.
   * Removal of the textually described [use case of a PADV](pharmaceutical-advice-document.html#modifying-an-existing-medication) 'CHANGE' in the context of a dispense.
* [#194](https://github.com/hl7ch/ch-emed/issues/179): Remove display values from patternCodeableConcepts, remove minimum cardinality = 1 for display values, using official display values in examples (valid with http://tx.fhir.org/r4).
* [#179](https://github.com/hl7ch/ch-emed/issues/179): Change the author element for MedicationRequest from 'performer' to 'requester'.
* [#206](https://github.com/hl7ch/ch-emed/issues/206): Change required CodeableConcepts of Composition.type from SNOMED CT to LOINC (MTP/DIS/PRE/PADV/LIST) to be able to distinguish all document types.
* [#156](https://github.com/hl7ch/ch-emed/issues/156): Set minimum cardinality of MedicationDispense.substitution.type back to 0 and define a ValueSet ActSubstanceAdminSubstitutionCode excluding 'none' to prevent contradictions. 
* [#195](https://github.com/hl7ch/ch-emed/issues/195): Add additional slice in Composition.author to reference a device (MTP/PRE/DIS/PADV).
* [#149](https://github.com/hl7ch/ch-emed/issues/149): Add ATC-slice for Medication.code
* [#200](https://github.com/hl7ch/ch-emed/issues/200): Relax minimum cardinality of timing in [CH EMED Dosage (MedicationRequest)](StructureDefinition-ch-emed-dosage-medicationrequest.html)
* [#211](https://github.com/hl7ch/ch-emed/issues/211): Remove element/entry custodian (was required because of CDA), analog to CH Core EPR 
* [#214](https://github.com/hl7ch/ch-emed/issues/214): Require dose/rate and frequency for split dosage 
* [#215](https://github.com/hl7ch/ch-emed/issues/215): Clarify usage of `Dosage.patientInstruction`: Use it for the patient instructions (e.g. 'take with food'), incl. free text dosage instructions (e.g. for complex dosage). Don't active support `Dosage.text` anymore.
* [#219](https://github.com/hl7ch/ch-emed/issues/219): Update the examples to be conformant to CH-EMED-EPR.
* [#140](https://github.com/hl7ch/ch-emed/issues/140): Add new SNOMED CT document type codes (`Composition.type`) and update the profiles to check the correctness of the second provided coding (LOINC):
   * CARD: SCT#736378000 'Medication management plan (record artifact)'
   * MTP: SCT#761931002 'Medication treatment plan report (record artifact)'
   * DIS: SCT#294121000195110 'Medication dispense document (record artifact)'
* [#226](https://github.com/hl7ch/ch-emed/issues/226): Added values to examples (MedicationDispense.whenHandedOver, MedicationDispense.quantity.code/unit/system) and corrected identifier of the changed MedicationStatement (added a note to the Observation profile)   

#### Fixed
* [#182](https://github.com/hl7ch/ch-emed/issues/182): Don't allow nested sections.
* [#196](https://github.com/hl7ch/ch-emed/issues/196): No restriction of maximum cardinality of contained resources and adding aggregation type `contained` to element 'medicationReference'.
* [#191](https://github.com/hl7ch/ch-emed/issues/191): Typos
* [#209](https://github.com/hl7ch/ch-emed/issues/209): Allow Patient and RelatedPerson as reference of MedicationStatement.informationSource (CARD)


### STU 3 Sequence - v3.0.0 (2022-12-21)
#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#140](https://github.com/hl7ch/ch-emed/issues/140): Adding a new code (SCT) for Medication Card document (Composition.type)

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).

#### Added / Updated
* Different authors:
   * [#113](https://github.com/hl7ch/ch-emed/issues/113): Mapping of the author of the medical decision and the author of the document for the Medication List document. 
      * Add separate profiles ([MedicationStatement](StructureDefinition-ch-emed-medicationstatement-list.html)/[MedicationDispense](StructureDefinition-ch-emed-medicationdispense-list.html)/[MedicationRequest](StructureDefinition-ch-emed-medicationrequest-list.html)/[Observation](StructureDefinition-ch-emed-observation-list.html)) for use in the Medication List document ([#114](https://github.com/hl7ch/ch-emed/issues/114)). 
      * [#133](https://github.com/hl7ch/ch-emed/issues/133): Use case for prescription authors clarified by the separate list profiles and guidance (without additional adaptation needed)
   * Add description/use cases for the use of the different authors at the different document levels (document/section/entry) under Guidance and update the profiles/examples according to the guidance ([#113](https://github.com/hl7ch/ch-emed/issues/113)):
      * [MTP](StructureDefinition-ch-emed-composition-medicationtreatmentplan.html)/[PRE](StructureDefinition-ch-emed-composition-medicationprescription.html)/[DIS](StructureDefinition-ch-emed-composition-medicationdispense.html)/[PADV](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson) (~~CH EMED Practitioner &#124; CH Core Organization EPR &#124; Device~~)
         * Composition.section.author: dito
      * [CARD](StructureDefinition-ch-emed-composition-medicationcard.html):
         * Composition.author: Reference(CH EMED PractitionerRole &#124; Device &#124; CH Core Patient EPR &#124; RelatedPerson) (~~CH EMED Practitioner &#124; CH Core Organization EPR~~)
         * Composition.section.author: remove this element from differential
         * Entries - Author document: use CH Core Extension (remove ch-emed-ext-documentauthor) ([#146](https://github.com/hl7ch/ch-emed/issues/146), [#114](https://github.com/hl7ch/ch-emed/issues/114))
         * Entries - Author medical decision: only allow PractitionerRole (remove ch-emed-ext-representedorganization) ([#114](https://github.com/hl7ch/ch-emed/issues/114))
      * [LIST](StructureDefinition-ch-emed-composition-medicationlist.html):
         * Composition.author: Reference(Device) (~~CH EMED Practitioner &#124; CH EMED PractitionerRole &#124; CH Core Patient EPR &#124; RelatedPerson &#124; CH Core Organization EPR~~) 
         * Composition.section.author: remove this element from differential
         * Entries: add seperate list profiles as mentioned above
   * [#132](https://github.com/hl7ch/ch-emed/issues/132), [#125](https://github.com/hl7ch/ch-emed/issues/125): Practitioner and his/her organization (Composition.author) are mapped via PractitionerRole (updated profiles: all Compositions, [PractitionerRole](StructureDefinition-ch-emed-practitionerrole.html), [Practitioner](StructureDefinition-ch-emed-practitioner.html), [Organization](StructureDefinition-ch-emed-organization.html))   
   * [#151](https://github.com/hl7ch/ch-emed/issues/151): Include various inputs on the topic
* [#161](https://github.com/hl7ch/ch-emed/issues/161): [Home](index.html): Include the new IG fragments (IP Statements/Cross Version Analysis/Dependency Table/Globals Table) and remove Copyright (new included in IP Statements)
* [#126](https://github.com/hl7ch/ch-emed/issues/126): Set IG parameter 'allow-extensible-warnings = true' to show the warning when codes are not in extensible bindings
* [#141](https://github.com/hl7ch/ch-emed/issues/141): Add CH EMED examples in the profiles for 'identifier.value' (Bundle, Composition, MedicationDispense, MedicationRequest, MedicationStatement, Observation)
* [#91](https://github.com/hl7ch/ch-emed/issues/91): Allow Extension Substitution also in Medication Card document (incl. updating the description of the extension to clarify the usage)

#### Changed / Updated
* Update dependency to the current version of CH Core -> STU3 (v3.0.0)
* [#123](https://github.com/hl7ch/ch-emed/issues/123): Update of the [introduction](index.html#introduction) according to the current status 
* [#120](https://github.com/hl7ch/ch-emed/issues/120): Change mapping for patient instruction from '*Entry*.note' to 'Dosage.patientInstruction' to be able to map the annotation comment in the Medication Card document to '[MedicationStatemtent.note](StructureDefinition-ch-emed-medicationstatement-card.html)' 
   * [#116](https://github.com/hl7ch/ch-emed/issues/116): Update the description of '[Observation.note](StructureDefinition-ch-emed-observation.html)'.
* Simplification/enhancement of dosing
   * [#120](https://github.com/hl7ch/ch-emed/issues/120): Add element 'patientInstruction' -> because the mapping from element '.note' has changed to 'Dosage.patientInstruction'
   * [#117](https://github.com/hl7ch/ch-emed/issues/117), [#72](https://github.com/hl7ch/ch-emed/issues/72): Add mapping for reserve medication as 'Dosage.asNeededBoolean'
   * [#130](https://github.com/hl7ch/ch-emed/issues/130), [#127](https://github.com/hl7ch/ch-emed/issues/127): Allow more different cases of dosages
* [#150](https://github.com/hl7ch/ch-emed/issues/150): Due to the decision that the CDA format will no longer be supported, CDA specific elements have been removed/adapted:
   * Remove extensions from differential (since they are defined in the underlying CH Core EPR profiles, they can theoretically still be used): 
      * time-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time) in author elements (profiles/examples)
      * sectionId-extension (http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-sectionid) in Composition.section (profiles/examples) ([#155](https://github.com/hl7ch/ch-emed/issues/155))
      * dataEnterer-extension in Composition (profiles)
      * versionNumber-extension in Composition (profiles)
      * informationRecipient in Composition (profiles) (note: is still a required element from CH Core EPR)
   * Remove mapping between CDA and FHIR in profiles ([#157](https://github.com/hl7ch/ch-emed/issues/157)) 
   * Remove the links to the CDA-CH-EMED documents (in the document tabs)
* [#118](https://github.com/hl7ch/ch-emed/issues/118): Adaptation of the use case title (de/fr) for PADV document to avoid confusion 
* [#131](https://github.com/hl7ch/ch-emed/issues/131): Optimization of the descriptions of the extensions which represent the references to other documents
* [#129](https://github.com/hl7ch/ch-emed/issues/129): Remove additional FHIR validation rules on 'Composition.title' and 'Composition.section.title'
* [#24 CDA](https://github.com/hl7ch/hl7ch-cda/issues/24): Update description of CARD and LIST 
* [#139](https://github.com/hl7ch/ch-emed/issues/139): Update description of CARD

#### Fixed
* [#128](https://github.com/hl7ch/ch-emed/issues/128): Remove requirement 'fixedValue' for 'MedicationStatement.status' and 'MedicationRequest.status', fixed wrong codes (~~completed~~) in examples
* [#144](https://github.com/hl7ch/ch-emed/issues/144): Typo
* [#135](https://github.com/hl7ch/ch-emed/issues/135): Broken link
* [#160](https://github.com/hl7ch/ch-emed/issues/160): Add missing elements 'experimental=false' and 'description' to CodeSystems

#### Issues resolved without amendment
* [#119](https://github.com/hl7ch/ch-emed/issues/119): Update the mapping to CDA for the Observation is no longer necessary
* [#134](https://github.com/hl7ch/ch-emed/issues/134): Issue was withdrawn
* [#124](https://github.com/hl7ch/ch-emed/issues/124): Due to the simplification of dosing, this request for stricter validation is no longer necessary
* [#142](https://github.com/hl7ch/ch-emed/issues/142): Representation GTIN remains in Medication.code (not identifier)
* [#143](https://github.com/hl7ch/ch-emed/issues/143): Currently no representation of the product code
* [#136](https://github.com/hl7ch/ch-emed/issues/136): No update for MTP necessary
* [#137](https://github.com/hl7ch/ch-emed/issues/137): No update for PRE necessary
* [#138](https://github.com/hl7ch/ch-emed/issues/138): Solved with other issue


### STU 3 Sequence - v2.1.0-ballot (2022-07-07)

#### Changed / Updated
* [#95](https://github.com/hl7ch/ch-emed/issues/95): Update description of Composition/Bundle.identifier
* [#86](https://github.com/hl7ch/ch-emed/issues/86): Update minimum cardinality of Composition.custodian (due to relaxation in the underlying CH Core profile)
* [#101](https://github.com/hl7ch/ch-emed/issues/101): Update profiles -> Composition.author.extension:time (according to update in CH Core)
* [#103](https://github.com/hl7ch/ch-emed/issues/103): Dosage - Do not allow unstructured dosage text when normal/split dosing
issue90-dosage
* [#90](https://github.com/hl7ch/ch-emed/issues/90): Dosage in Medication Prescription document - Relax minimum cardinality of Dosage.timing.repeat.boundsPeriod to 0
* [#106](https://github.com/hl7ch/ch-emed/issues/106): Improve slicing that info entry[x] warnings are not shown
* [#110](https://github.com/hl7ch/ch-emed/issues/110): Update title of the profiles for a better readability of the references
* Update value sets
   * [#89](https://github.com/hl7ch/ch-emed/issues/89): ActivePharmaceuticalIngredient -> fix typo (Nicotine)
   * [#94](https://github.com/hl7ch/ch-emed/issues/94): EDQM - RouteOfAdministration -> add EDQM code '20087000' (Extrapleural use)
   * [#93](https://github.com/hl7ch/ch-emed/issues/93): UnitCode -> add UCUM code 'a' (year)
   * UnitCode -> update the fr-CH display value for '732982009' from 'poche' to 'sac'
   * [#111](https://github.com/hl7ch/ch-emed/issues/111): UnitCode -> add UCUM code 'mo' (month)

#### Fixed
* [#97](https://github.com/hl7ch/ch-emed/issues/97), [#92](https://github.com/hl7ch/ch-emed/issues/92): Typos
* [#164](https://github.com/hl7ch/ch-emed/issues/164): Fix id of the element 'medicationReference' in the differential (profile)



### STU 2 Sequence - v2.0.0 (2022-02-11)
#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH EMED:
* [#72](https://github.com/hl7ch/ch-emed/issues/72) Representation of status "in reserve" (InRes) for a medication is missing.

See also open issues on [GitHub](https://github.com/hl7ch/ch-emed/issues).
 
#### Added
* [#73](https://github.com/hl7ch/ch-emed/issues/73): Add warning if non-recommended timing-event codes are used in the structured dosage.
   * [CH EMED Dosage Structured Profile](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured.html) 
* [#76](https://github.com/hl7ch/ch-emed/issues/76): Elaboration of the repeated dispense.
   * [Additional tab with detailed description](repeated-dispense.html) 
   * Add element `MedicationRequest.dispenseRequest.validityPeriod` to be able to represent possible use cases ([profile](StructureDefinition-ch-emed-medicationrequest.html), [mapping to CDA](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-medicationrequest-mappings.html#mappings-for-cda-r2-http-hl7-org-v3-cda))

#### Changed / Updated
* [#64](https://github.com/hl7ch/ch-emed/issues/64): Dosage.timing.repeat.bounds[x] restricted to Period (start/end) instead of Duration, Range, Period to be equivalent to CDA.
   * [CH EMED Dosage Structured Profile](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured.html)
   * [CH EMED Dosage Structured Profile Normal Dosing (MedicationRequest)](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured-normal-medicationrequest.html)
   * [CH EMED Dosage Structured Profile Split Dosing (MedicationRequest)](https://fhir.ch/ig/ch-emed/2.0.0/StructureDefinition-ch-emed-dosage-structured-split-medicationrequest.html)
* [#75](https://github.com/hl7ch/ch-emed/issues/75): Set mustSupport = true for patient (Composition.subject) and author (Composition.author) of the Medication Card document, because they belong to the minimal data set of IPAG.
   * [CH EMED Medication Card Composition Profile](StructureDefinition-ch-emed-composition-medicationcard.html)
* [#74](https://github.com/hl7ch/ch-emed/issues/74): Change the description of the identifiers of MedicationStatement, MedicationRequest, MedicationDispense and Observation (clear naming without relation to the naming of the equivalent CDA element).
   * [CH EMED MedicationStatement Profile](StructureDefinition-ch-emed-medicationstatement.html)
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
   * [CH EMED MedicationDispense Profile](StructureDefinition-ch-emed-medicationdispense.html) 
   * [CH EMED Observation Profile](StructureDefinition-ch-emed-observation.html)
* [#62](https://github.com/hl7ch/ch-emed/issues/62): Provide a [separate paragraph](index.html#mustsupport) on the flag mustSupport on the front page of the IG.
* [#76](https://github.com/hl7ch/ch-emed/issues/62): Set minimum cardinality for element `MedicationRequest.dispenseRequest.numberOfRepeatsAllowed` (and `MedicationRequest.dispenseRequest`) back to 0, according to changes in CDA.
   * [CH EMED MedicationRequest Profile](StructureDefinition-ch-emed-medicationrequest.html)
* [#80](https://github.com/hl7ch/ch-emed/issues/80): Update references for the document author (Composition.author)
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
* [#63](https://github.com/hl7ch/ch-emed/issues/63): Typo in constraint "ch-emed-sect-annot"
   * [CH EMED Medication Prescription Composition Profile](StructureDefinition-ch-emed-composition-medicationprescription.html)
* [#66](https://github.com/hl7ch/ch-emed/issues/66): Removed element Organization.telecom with the value 'nullFlavor' (extension), if no value is set, the element will not be represented.
   * [Organization Hausarzt](Organization-Hausarzt.html)
* [#71](https://github.com/hl7ch/ch-emed/issues/71): Typo in constraint "ch-emed-sect-padv"
   * [CH EMED Pharmaceutical Advice Composition Profile](StructureDefinition-ch-emed-composition-pharmaceuticaladvice.html)
* [#69](https://github.com/hl7ch/ch-emed/issues/63): Wrong data in example 2-6 Medication Prescription document (base64 pdf, MedicationRequest.dispenseRequest)
   * [2-6 Medication Prescription document](Bundle-2-6-MedicationPrescription.html) 

#### Issues resolved without amendment
* [#70](https://github.com/hl7ch/ch-emed/issues/70) Remove language requirements of titles
* [#68](https://github.com/hl7ch/ch-emed/issues/68) MedicationDispense: languageCode fr-CH not accepted
* [#65](https://github.com/hl7ch/ch-emed/issues/65) CH EMED Extension Substitution - ValueSets not equal to CDA
