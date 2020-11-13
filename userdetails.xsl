<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>details</title>
</head>
<body>
<style>
	body{
		background-color:#ffb266;
	}
</style>
   <p> <b>USER DETAILS</b> </p>
	<table border = "1" bgcolor = "pink">
	<thead>
		<tr>
			<th>User ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Location</th>
			<th>E-mail</th>
		</tr>
	</thead>
	<xsl:for-each select = "/details/user">
		<tr>
            <td><xsl:value-of select = "@uid"/></td>
			<td><xsl:value-of select = "name"/></td>
			<td><xsl:value-of select = "phone"/></td>
			<td><xsl:value-of select = "location"/></td>
			<td><xsl:value-of select = "email"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>