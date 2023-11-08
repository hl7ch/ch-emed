Profile: CHEMEDObservationList
Parent: CHEMEDObservation
Id: ch-emed-observation-list
Title: "CH EMED Observation (LIST)"
Description: "Definition of the observation for the medication list document"
* . ^short = "CH EMED Observation (LIST)"
* extension contains
    CHEMEDExtPharmaceuticalAdvice named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (Observation.performer), see also 'Guidance - Different Authors'"
