<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Equipos por Temporada</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #f0f0f0;
                    margin: 0;
                    padding: 20px;
                }
                .team-container {
                    display: flex;
                    flex-wrap: wrap;
                    gap: 20px;
                }
                .team-box {
                    width: 45%;
                    background-color: #fff;
                    border: 1px solid #ddd;
                    padding: 15px;
                    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                    cursor: pointer;
                    transition: transform 0.2s;
                }
                .team-box:hover {
                    transform: scale(1.05);
                }
                .team-box strong {
                    font-size: 1.2em;
                    color: #333;
                }
                .team-box small {
                    display: block;
                    margin-top: 5px;
                    color: #666;
                }
                .players-list {
                    margin-top: 10px;
                }
                .players-list ul {
                    list-style-type: none;
                    padding: 0;
                }
                .players-list li {
                    background-color: #f9f9f9;
                    margin-bottom: 5px;
                    padding: 10px;
                    border: 1px solid #ddd;
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }
                .player-info {
                    display: flex;
                    flex-direction: column;
                }
                .player-info span {
                    margin-bottom: 3px;
                }
                .player-dorsal {
                    font-size: 1.2em;
                    font-weight: bold;
                    color: #333;
                }
            </style>
        </head>
        <body>
            <h1>Equipos de la Temporada <xsl:value-of select="/teams/team/@season"/></h1>
            <div class="team-container">
                <xsl:for-each select="/teams/team">
                    <xsl:if test="@season = $season">
                        <div class="team-box" onclick="showPlayers('team-{position()}')">
                            <xsl:attribute name="id">team-{position()}</xsl:attribute>
                            <strong><xsl:value-of select="@name"/></strong>
                            <small>Fundado en <xsl:value-of select="@founded"/></small>
                            <div class="players-list" id="players-team-{position()}">
                                <ul>
                                    <xsl:for-each select="player">
                                        <li>
                                            <div class="player-info">
                                                <span><strong>Nombre:</strong> <xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/> <xsl:value-of select="secondLastName"/></span>
                                                <span><strong>Fecha de Nacimiento:</strong> <xsl:value-of select="birthDate"/></span>
                                            </div>
                                            <div class="player-dorsal">
                                                <xsl:value-of select="dorsal"/>
                                            </div>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </div>
                    </xsl:if>
                </xsl:for-each>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>