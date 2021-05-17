That a FHIR exchange format can be converted to CDA there are a few additional rules necessary:
- identifier's for patients and organizations in documents need to be oid based,


Options.
- Require only oid based patient identifiers? -> Maybe limiting for the future?
- Make an additional CDA profile which will check for that error?
- Configure mapping that url to oid could be resolved dynamically



