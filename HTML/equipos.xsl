<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <div style="display: flex; flex-wrap: wrap;">
            <xsl:for-each select="teams/team[position() &lt;= 6]">
                <div style="border: 1px solid #000; margin: 10px; padding: 10px; width: 150px;">
                    <h2><xsl:value-of select="name"/></h2>
                    <p>Fecha de Fundación: <xsl:value-of select="foundationDate"/></p>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>