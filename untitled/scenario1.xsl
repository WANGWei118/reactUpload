<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Liste de
                    <xsl:value-of select="count(//etudiant[@promo='3'])"/> étudiants de 3ème année
                </h2>
                <xsl:apply-templates select="//etudiants"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="etudiants">
        <h3>SI3:
            <xsl:value-of select="count(//etudiant[@promo='3'][@specialite='SI'])"/> étudiants
        </h3>
        <table border="1" width="100%">
            <tr bgcolor="#CCCCFF">
                <th>Nom</th>
                <th>Prénom</th>
                <th>Naissance</th>
                <th>Email</th>
            </tr>
            <xsl:for-each select="etudiant[@specialite='SI'][@promo='3']/info-personal">
                <xsl:sort select="nom"/>
                <tr>
                    <td>
                        <xsl:value-of select="nom"/>
                    </td>
                    <td>
                        <xsl:value-of select="prenom"/>
                    </td>
                    <td>
                        <xsl:value-of select="naissance"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>

        <h3>GE3:
            <xsl:value-of select="count(//etudiant[@promo='3'][@specialite='GE'])"/> étudiants
        </h3>
        <table border="1" width="100%">
            <tr bgcolor="#CCCCFF">
                <th>Nom</th>
                <th>Prénom</th>
                <th>Naissance</th>
                <th>Email</th>
            </tr>
            <xsl:for-each select="etudiant[@specialite='GE'][@promo='3']/info-personal">
                <xsl:sort select="nom"/>
                <tr>
                    <td>
                        <xsl:value-of select="nom"/>
                    </td>
                    <td>
                        <xsl:value-of select="prenom"/>
                    </td>
                    <td>
                        <xsl:value-of select="naissance"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>

        <h3>MAM3:
            <xsl:value-of select="count(//etudiant[@promo='3'][@specialite='MAM'])"/> étudiants
        </h3>
        <table border="1" width="100%">
            <tr bgcolor="#CCCCFF">
                <th>Nom</th>
                <th>Prénom</th>
                <th>Naissance</th>
                <th>Email</th>
            </tr>
            <xsl:for-each select="etudiant[@specialite='MAM'][@promo='3']/info-personal">
                <xsl:sort select="nom"/>
                <tr>
                    <td>
                        <xsl:value-of select="nom"/>
                    </td>
                    <td>
                        <xsl:value-of select="prenom"/>
                    </td>
                    <td>
                        <xsl:value-of select="naissance"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>

    </xsl:template>
</xsl:stylesheet>