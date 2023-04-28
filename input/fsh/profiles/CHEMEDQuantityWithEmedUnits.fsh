Profile: CHEMEDQuantityWithEmedUnits
Parent: SimpleQuantity
Id: ch-emed-quantity
Title: "CH EMED Quantity with Units"
Description: "A quantity with defined units"
* ^date = "2021-02-11"
* . 0..*
* . ^isModifier = false
* value 1..
* unit 1..
* system 1..
* system ^short = "System of the code from Units of Presentation"
* code 1..
* code from $UnitCode (required)
* code ^definition = "Units of Presentation"
* code ^binding.description = "The coded unit used describing the quantity."