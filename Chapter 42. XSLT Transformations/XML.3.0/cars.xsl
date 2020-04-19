<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml"
    version="1.0">
    <xsl:output method="xml" 
                    indent="yes"
                    omit-xml-declaration="no"
                doctype-system="about:legacy-compat"/>

    <xsl:template match="car">
        <html>
            <head>
                <title>Second Hand Sardine Cans</title>
                <meta charset="utf-8"/>
                <style>
                        h1 {
                            text-align: center;
                        }
                        td, th { 
                            padding: 30px; 
                            text-align: center;
                        }
                </style>
            </head>
            <body>
                <h1>Cars</h1>
                <table border="1">
                    <tr>
                        <th>Make</th>
                        <th>Model</th>
                        <th>Year</th>
                        <th>KMs</th>
                        <th>Color</th>
                        <th>Price</th>
                        <th>Warranty</th>
                    </tr>        
                    
                    <xsl:for-each match="cars">
                    <xsl:sort select="@manufacturer"/>
                        <tr>
                            <td><xsl:value-of select="@manufacturer"/></td>
                            <td><xsl:value-of select="@model" /></td>
                            <td><xsl:value-of select="@year" /></td>
                            <td><xsl:value-of select="meter" /></td>
                            <td><xsl:attribute name="bgcolor"><xsl:value-of select="color"/></xsl:attribute></td>
                            <td><xsl:value-of select="price"/></td>
                            <td style="text-align: center;">
                                <xsl:choose>
                                    <xsl:when test="dealersecurity[@buyback='yes']">&#10004;</xsl:when>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <td colspan="4">Average price</td>
                            <td>DKR</td>
                            <td><xsl:value-of select="sum(car/price)"/></td>
                        </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>