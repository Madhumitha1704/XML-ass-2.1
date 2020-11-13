<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>Conditions</title>
</head>
<body>
<style>
	body{
		background-color:#ff66b2;
	}
</style>
   <p> <b>WEATHER FORECASTING WEBSITE</b> </p>
	<table border = "1" bgcolor = "pink">
	<thead>
		<tr>
			<th>Pin Code</th>
			<th>City Name</th>
			<th>Today climate</th>
			<th>Tomorrow climate</th>
			<th>Thursday climate</th>
		</tr>
	</thead>
	<xsl:for-each select = "/conditions/city">
		<tr>
            <td><xsl:value-of select = "@pincode"/></td>
			<td><xsl:value-of select = "@name"/></td>
			<td><xsl:value-of select = "today"/></td>
			<td><xsl:value-of select = "tomorrow"/></td>
			<td><xsl:value-of select = "thursday"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>