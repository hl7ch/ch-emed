Instance: MaxMoser
InstanceOf: CHCorePatientEPR
Title: "Max Moser"
Description: "Example for Patient - Use case steps 3.x: Male patient with a local patient identifier, date of birth and address."
Usage: #example
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.999.1"
* identifier.value = "123456"
* name.family = "Moser"
* name.given = "Max"
* gender = #male
* birthDate = "1988-11-27"
* address.line = "Schneefeld 5a"
* address.city = "Bern"
* address.postalCode = "3006"
* address.country = "CH"
