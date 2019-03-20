<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Liste de
                    <xsl:value-of select="count(//filière[nom-filière='SI']/courss/cours)"/> cours de SI
                </h2>
                <xsl:apply-templates
                        select="engineer/formation-school/promotion/filières/filière[nom-filière= 'SI']/courss"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="courss">
        <h3>cours de SI<xsl:value-of select="../../../année"/>
        </h3>
        <table border="1" width="80%">
            <tr bgcolor="#CCCCFF">
                <td>Cours</td>
                <td>Introduction</td>
            </tr>
            <xsl:for-each select="cours">
                <xsl:variable name="idCour" select="description/@courIdref"/>
                <xsl:for-each select="../../../../../../infos-cours/info-cour[@courId = $idCour]">
                    <tr>
                        <td>
                            <xsl:value-of select="nom-cour"/>
                        </td>
                        <td>
                            <xsl:value-of select="intro-cour"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>