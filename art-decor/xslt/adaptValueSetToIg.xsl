<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns="http://hl7.org/fhir" 
 xmlns:fhir="http://hl7.org/fhir">

    <xsl:output method="xml" indent="yes" />
    
    <xsl:param name="canonicalBase" required="yes" />
    <xsl:param name="resourceId" required="yes" />

    <xsl:variable name="url" select="//fhir:ValueSet/fhir:url/@value" />

    <xsl:template match="fhir:ValueSet/fhir:id">
      <fhir:id>
			<xsl:attribute name="value"><xsl:value-of select="$resourceId" />
     </xsl:attribute>
      </fhir:id>    
    </xsl:template>

    <!-- add meta source value with original url -->
    <xsl:template match="fhir:meta">
      <fhir:meta>
         <fhir:source>
			      <xsl:attribute name="value"><xsl:value-of select="$url" /></xsl:attribute>
         </fhir:source>         
         <xsl:apply-templates />
      </fhir:meta>      
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:url">
      <fhir:url>
			<xsl:attribute name="value"><xsl:value-of select="$canonicalBase" />/ValueSet/<xsl:value-of select="$resourceId" />
         </xsl:attribute>
      </fhir:url>   
    </xsl:template>



    <!-- RouteOfAdministration (EDQM) map to EDQM - RouteOfAdministration -->
    <xsl:template match="fhir:ValueSet/fhir:title">
      <xsl:choose>
          <xsl:when test="contains(@value, ' (EDQM)')">
            <fhir:title>
              <xsl:attribute name="value"><xsl:value-of select="concat('EDQM - ',substring-before(@value, ' (EDQM)'))" />
              </xsl:attribute>
            </fhir:title>
          </xsl:when>
        <xsl:otherwise>
          <fhir:title><xsl:attribute name="value"><xsl:value-of select="@value" /></xsl:attribute></fhir:title>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:template>

       <!-- include/system has changed from an oid to  http://fhir.de/CodeSystem/edqm -->
       <xsl:template match="fhir:include/fhir:system">
       <xsl:choose>
           <xsl:when test="contains(@value, 'http://fhir.de/CodeSystem/edqm')">
             <fhir:system>
               <xsl:attribute name="value"><xsl:value-of select="'urn:oid:0.4.0.127.0.16.1.1.2.1'" />
               </xsl:attribute>
             </fhir:system>
           </xsl:when>
         <xsl:otherwise>
           <fhir:system><xsl:attribute name="value"><xsl:value-of select="@value" /></xsl:attribute></fhir:system>
         </xsl:otherwise>
       </xsl:choose>
     </xsl:template>
 
    <xsl:template match="fhir:ValueSet/fhir:compose/fhir:include/fhir:system[@value='http://snomed.info/sct']">
      <fhir:system value="http://snomed.info/sct" />
      <fhir:version value="http://snomed.info/sct/2011000195101" />
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:compose/fhir:include/fhir:system[@value='urn:oid:2.16.756.5.30.1.127.3.4']">
      <fhir:system value="http://snomed.info/sct" />
      <fhir:version value="http://snomed.info/sct/2011000195101" />
    </xsl:template>


    <!-- The Coding provided is not in the value set http://hl7.org/fhir/ValueSet/designation-use (http://hl7.org/fhir/ValueSet/designation-use, and a code should come from this value set unless it has no suitable code) (error message = The code system "http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType" is not known; The code provided (http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType#preferred) is not valid in the value set DesignationUse) -->
    <!-- remove it -->
    <xsl:template match="fhir:concept/fhir:designation/fhir:use" />

    <!--ValueSet.compose.include.concept[1].extension.valueString	warning	value should not start or finish with whitespace -->
    <xsl:template match="fhir:valueString/@value">
      <xsl:attribute name="value" namespace="{namespace-uri()}">
        <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
      </xsl:attribute>
    </xsl:template>

    <xsl:template match="node()|@*">
      <xsl:copy>
         <xsl:apply-templates select="node()|@*"/>
      </xsl:copy>
    </xsl:template>

   
</xsl:stylesheet>