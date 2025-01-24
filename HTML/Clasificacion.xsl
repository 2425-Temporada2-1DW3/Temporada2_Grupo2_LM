<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Clasificación de Equipos</title>
            <style>
                table {
                    width: 50%;
                    border-collapse: collapse;
                }
                table, th, td {
                    border: 1px solid black;
                }
                th, td {
                    padding: 10px;
                    text-align: left;
                }
                th {
                    background-color: #f2f2f2;
                }
            </style>
        </head>
        <body>
            <h1>Clasificación de Equipos</h1>
            <table>
                <tr>
                    <th>Posición</th>
                    <th>Equipo</th>
                    <th>Puntos</th>
                </tr>
                <xsl:for-each select="clasificacion/equipo">
                    <tr>
                        <td><xsl:value-of select="posicion"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="puntos"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>