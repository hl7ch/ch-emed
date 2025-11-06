Profile: CHEMEDUUIDIdentifier
Parent: Identifier
Id: ch-emed-uuid-identifier
Title: "CH EMED UUID Identifier"
Description: """
An Identifier profile enforcing CH EMED rules for UUID-based identifiers.     
- `system` SHALL be `urn:ietf:rfc:3986`
- `value` SHALL be a UUID in URN format (`urn:uuid:[uuid]`)     

See also [Relationship between Documents](relationship-between-documents.html#identifier-format) for more information.
"""

* system 1..
* system = "urn:ietf:rfc:3986" (exactly)
* value 1..
* value ^definition = "A UUID expressed as a URN according to RFC 4122 and RFC 3986."
* value ^example.label = "CH EMED"
* value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* value obeys uuid-format


Invariant: uuid-format
Description: "The value SHALL start with 'urn:uuid:' followed by a valid UUID."
Expression: "matches('^urn:uuid:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$')"
Severity: #error
