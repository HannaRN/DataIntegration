<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="xml"
				indent="yes"
				omit-xml-declaration="no"
	            doctype-system="about:legacy-compat"/>

	<!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
    
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8"/>
			</head>
			<body style="background-color: #583e3e;">
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
<table>
	<xsl:template match="booksCanon/book">
		<section style="
			background-color: blue;
			padding: 10px;
			width: 50%;">
		<xsl:apply-templates/>
		</section>
	</xsl:template>
	
    <!--Titel-->
	<xsl:template match="booksCanon/book/title">
		<h1>
        <section style="
            text-decoration: underline;">
        <xsl:apply-templates/>
		</section></h1>
	</xsl:template>

    <!--Udgave-->
	<xsl:template match="booksCanon/book/edition">
		<p><b>Edition: </b> <xsl:apply-templates/></p>
	</xsl:template>

    <!--Forfatter-->
	<xsl:template match="booksCanon/book/authors/author">
		<p><b>Author: </b> <xsl:apply-templates/></p>
	</xsl:template>

    <!--Forlag-->
	<xsl:template match="booksCanon/book/publisher">
		<p><b>Publisher: </b> <xsl:apply-templates/></p>
	</xsl:template>

    <!--Sider-->
	<xsl:template match="booksCanon/book/pages">
		<p><b>Pages: </b> <xsl:apply-templates/></p>
	</xsl:template>

    <!--ISBN-->
	<xsl:template match="booksCanon/book/isbn">
		<p><b>ISBN: </b> <xsl:apply-templates/></p>
	</xsl:template>

    <!--Pris-->
	<tr style="outline: 1px solid;"> <xsl:template match="booksCanon/book/price">
		<th><b>Price: </b></th> <td><xsl:apply-templates/></td>
	</xsl:template></tr>

    <!--Forlag-->
	<xsl:template match="booksCanon/book/currency">
		<p><b>Currency: </b> <xsl:apply-templates/></p>
	</xsl:template>
    
     <!--Kommentar-->
	<xsl:template match="booksCanon/book/comments">
		<p><b>Comments: </b> <xsl:apply-templates/></p>
	</xsl:template>
</table>
</xsl:stylesheet>