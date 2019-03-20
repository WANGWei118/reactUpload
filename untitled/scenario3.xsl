<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="engineer/formation-school/promotion[année=3]/filières/filière[ nom-filière= 'SI']/courss">
                    <h1>L'annulation du cours en SI3</h1>
                    <br/>
                    <xsl:apply-templates select="cours"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="cours">
        <xsl:for-each select=".">
            <xsl:if test="count(stu) &lt; 3">
                <xsl:variable name="idCour" select="description/@courIdref"/>
                <h2>
                    <xsl:for-each select="../../../../../../infos-cours/info-cour[@courId = $idCour]">
                        <xsl:value-of select="nom-cour"/>
                    </xsl:for-each>
               ---- Nombre d'etudiants:
                    <xsl:value-of disable-output-escaping="yes" select="count(stu)"/>
                </h2>
                <h3>
                    La liste d'enseignants
                </h3>
                <table border="1" width="60%">
                <tr bgcolor="#E6E6FA">
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                </tr>
                    <xsl:for-each select="pro">
                        <xsl:variable name="idPro" select="@proIdref"/>
                        <xsl:for-each select="../../../../../../../enseignants/enseignant[@id = $idPro]/info-personal">
                            <tr>
                                <td>
                                    <xsl:value-of select="nom"/>
                                </td>
                                <td>
                                    <xsl:value-of select="prenom"/>
                                </td>
                                <td>
                                    <xsl:value-of select="email"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
                <h3>
                    La liste d'etudiants
                </h3>
                <table border="1" width="60%">
                    <tr bgcolor="#E6E6FA">
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Email</th>
                    </tr>
                    <xsl:for-each select="stu">
                        <xsl:variable name="idStu" select="@stuIdref"/>
                        <xsl:for-each select="../../../../../../../etudiants/etudiant[@id = $idStu]/info-personal">
                            <tr>
                                <td>
                                    <xsl:value-of select="nom"/>
                                </td>
                                <td>
                                    <xsl:value-of select="prenom"/>
                                </td>
                                <td>
                                    <xsl:value-of select="email"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </xsl:if>
        </xsl:for-each>
        <hr/>
    </xsl:template>

</xsl:stylesheet>

