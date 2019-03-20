<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <xsl:text>&#10;</xsl:text>
        <xsl:processing-instruction name="xml-stylesheet">
            <xsl:text>href="scenario4.xsl" type="text/xsl"</xsl:text>
        </xsl:processing-instruction>
        <xsl:text>&#10;</xsl:text>
        <etudiants>
            <xsl:copy>
                <xsl:apply-templates select="engineer/etudiants/etudiant"/>
            </xsl:copy>
        </etudiants>
    </xsl:template>

    <xsl:template match="etudiant">
        <info-etudiant>
            <promotion>
                <xsl:value-of select="@promo"/>
            </promotion>
            <specialite>
                <xsl:value-of select="@specialite"/>
            </specialite>
            <xsl:apply-templates select="info-personal"/>
        </info-etudiant>
    </xsl:template>

    <xsl:template match="info-personal">
        <nom>
            <xsl:value-of select="nom"/>
        </nom>
        <prenom>
            <xsl:value-of select="prenom"/>
        </prenom>
        <email>
            <xsl:value-of select="email"/>
        </email>
        <age>
            <xsl:value-of select="naissance"/>
        </age>
    </xsl:template>

</xsl:stylesheet>