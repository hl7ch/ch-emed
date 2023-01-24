<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://hl7.org/fhir"
  xmlns:fhir="http://hl7.org/fhir">

  <xsl:output method="xml" indent="yes" />

  <xsl:param name="resourceId" required="yes" />
  <xsl:param name="codeSystem" required="yes" />

  <xsl:variable name="codes" select="//fhir:ValueSet/fhir:compose/fhir:include[fhir:system[@value=$codeSystem]]/fhir:concept" />

  <!--
 <compose>
      <include>
         <system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
         <concept>
-->

  <xsl:variable name="url" select="//fhir:ValueSet/fhir:url/@value" />

  <xsl:template match="fhir:ValueSet">
    <fhir:CodeSystem>
      <fhir:id>
        <xsl:attribute name="value">
          <xsl:value-of select="$resourceId" />
        </xsl:attribute>
      </fhir:id>
      <fhir:meta>
        <fhir:source>
          <xsl:attribute name="value">
            <xsl:value-of select="$url" />
          </xsl:attribute>
        </fhir:source>
      </fhir:meta>
      <fhir:url value="http://fhir.ch/ig/ch-emed/CodeSystem/v3-TimingEvent"/>
      <fhir:version value="2.0.0"/>
      <fhir:name value="TimingEvent"/>
      <fhir:title value="TimingEvent"/>
      <fhir:status value="active"/>
      <fhir:experimental value="false"/>
      <fhir:date value="2021-05-26"/>
      <fhir:publisher value="eHealth Suisse"/>
      <fhir:contact>
        <fhir:name value="eHealth Suisse"/>
      </fhir:contact>
      <fhir:description value="Translations of concepts for v3-TimingEvent"/>
      <fhir:content value="supplement"/>
      <fhir:supplements value="http://terminology.hl7.org/CodeSystem/v3-TimingEvent" />
      <xsl:apply-templates />
    </fhir:CodeSystem>
  </xsl:template>


    <xsl:template match="fhir:ValueSet/fhir:compose">
       <xsl:apply-templates select="$codes" mode="copy"/>
    </xsl:template>

  <xsl:template match="fhir:ValueSet/fhir:compose/fhir:include"  mode="copy">
    <xsl:apply-templates mode="copy" />
  </xsl:template>

  <xsl:template match="fhir:ValueSet/fhir:system/fhir:include/fhir:concept/fhir:system"  mode="copy"/>



  <!-- The Coding provided is not in the value set http://hl7.org/fhir/ValueSet/designation-use (http://hl7.org/fhir/ValueSet/designation-use, and a code should come from this value set unless it has no suitable code) (error message = The code system "http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType" is not known; The code provided (http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType#preferred) is not valid in the value set DesignationUse) -->
  <!-- remove it -->
  <xsl:template match="fhir:concept/fhir:designation/fhir:use"  mode="copy" />

  <!--ValueSet.compose.include.concept[1].extension.valueString	warning	value should not start or finish with whitespace -->
  <xsl:template match="fhir:valueString/@value"  mode="copy">
    <xsl:attribute name="value" namespace="{namespace-uri()}">
      <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
    </xsl:attribute>
  </xsl:template>

  <!-- ValueSet/DocumentEntry.languageCode: ValueSet.compose.include[3].concept[22].designation[2].value 	value should not start or finish with whitespace -->
  <xsl:template match="fhir:value/@value"  mode="copy">
    <xsl:attribute name="value" namespace="{namespace-uri()}">
      <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="fhir:value/@value"  mode="copy">
    <xsl:attribute name="value" namespace="{namespace-uri()}">
      <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
    </xsl:attribute>
  </xsl:template>

  <xsl:template match="fhir:extension" mode="copy">
  </xsl:template>

  <xsl:template match="node()|@*" mode="copy">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*" mode="copy"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>