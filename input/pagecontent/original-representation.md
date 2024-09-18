
Representation (display) of FHIR Documents in the the context of the Swiss EPR:

1. Exchange formats for the Swiss EPR require a readable representation.
2. For the current proposed exchange formats it has been proposed that the presentation of the document has to be embedded PDF/A. 

### Narrative handling of section.text in FHIR documents with a PDF original representation

#### Adding the PDF to the FHIR Bundle

To represent the PDF in the FHIR document is added as a Binary resource within the bundle which is then referenced from the narrative part of this section via an img element [id from the narrative text](http://hl7.org/fhir/narrative.html#id). See also discussion on [zulip](https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Narrative.20.20reference.20to.20a.20PDF.20as.20FHIR.20doc.20representation).

**Open Issue:** The PDF is referenced with the `<img>` tag, but the PDF is actually not an image, this will not work directly with an XSLT Transformation, stylesheet. 

Option 1: Leave it as it is with the img tag.   
Option 2: Remove the img element completely?   
Option 3: Option 2 + Create a text extension that references the PDF directly.   
Option 4: Instead of creating a separate section just add the extension to the text pointing to the PDF to Composition.text and don't use the original section?    

```xml
        <section>
          <title value="Original representation"/>
          <code>
            <coding>
              <system value="http://loinc.org"/>
              <code value="55108-5"/>
              <display value="Clinical presentation Document"/>
            </coding>
          </code>
          <text>
            <status value="generated"/>
            <div xmlns="http://www.w3.org/1999/xhtml">
            Representation of the original view:
              <img src="2-7-pdf"/>
            </div>
          </text>
          <entry>
            <reference value="Binary/2-7-pdf"/>
          </entry>
        </section>
```

#### Referring to the PDF from another section

Since the representation of the other sections is described in the original representation it is not necessary for the other sections we have two possibilities:

Option 1: Add a text referring to the embedded PDF.

```xml
            <status value="generated"/>
            <div xmlns="http://www.w3.org/1999/xhtml">
              <span id="refpdf">See PDF</span>
            </div>
          </text>
```

For handling references between structured elements and the narrative (PDF in this case) the [http://hl7.org/fhir/StructureDefinition/narrativeLink](http://hl7.org/fhir/StructureDefinition/narrativeLink) has to be used to indicate the id (e.g. "refpdf") in the example.

Option 2: Do not add a text representation at all.

#### Annotation comment
A comment for the the document as a string is currently added as an own section in the document and is not represented as structured element.

