<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Clasificación de Equipos</title>
            <link rel="stylesheet" type="text/css" href="index.css"/>
        </head>
        <body>
            
            <h1>Clasificación de Equipos</h1>
            <table>
                <tr>
                    <th>Posición</th>
                    <th>Equipo</th>
                    <th>Puntos</th>
                    <th>Goles a favor</th>
                    <th>Goles en contra</th>
                    <th>Diferencia de goles</th>                
                </tr>
                <tr>
                    <td>1</td>
                    <td><xsl:value-of select="clasificacion/equipo[1]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[1]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[1]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[1]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[1]/diferenciadegoles"/></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><xsl:value-of select="clasificacion/equipo[2]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[2]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[2]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[2]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[2]/diferenciadegoles"/></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><xsl:value-of select="clasificacion/equipo[3]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[3]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[3]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[3]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[3]/diferenciadegoles"/></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><xsl:value-of select="clasificacion/equipo[4]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[4]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[4]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[4]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[4]/diferenciadegoles"/></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><xsl:value-of select="clasificacion/equipo[5]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[5]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[5]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[5]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[5]/diferenciadegoles"/></td>
                </tr>
                <tr>
                    <td>6</td>
                    <td><xsl:value-of select="clasificacion/equipo[6]/nombre"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[6]/puntos"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[6]/golesafavor"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[6]/golesencontra"/></td>
                    <td><xsl:value-of select="clasificacion/equipo[6]/diferenciadegoles"/></td>
                </tr>
                <xsl:for-each select="clasificacion/equipo[position() > 6]">
                    <tr>
                        <td><xsl:value-of select="position()"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="puntos"/></td>
                        <td><xsl:value-of select="golesafavor"/></td>
                        <td><xsl:value-of select="golesencontra"/></td>
                        <td><xsl:value-of select="diferenciadegoles"/></td>
                    </tr>
                </xsl:for-each>
            </table>
           
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>