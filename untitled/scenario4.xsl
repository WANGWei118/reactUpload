<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>La liste d'etudiants <xsl:value-of select="count(etudiants/info-etudiant)"/></h1>
                <xsl:apply-templates select="etudiants"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="etudiants">
        <table border="1" width="60%">
            <tr bgcolor="#E6E6FA">
                <th>Nom</th>
                <th>Email</th>
                <th>Specialite
                </th>
                <th>Promostion
                </th>
            </tr>
            <xsl:for-each select="info-etudiant">
                <xsl:sort select="promotion"/>
                <tr>
                    <td>
                        <xsl:value-of select="nom"/><xsl:value-of select="prenom"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                    <td>
                        <xsl:value-of select="specialite"/>
                    </td>
                    <td><xsl:value-of select="promotion"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

</xsl:stylesheet>