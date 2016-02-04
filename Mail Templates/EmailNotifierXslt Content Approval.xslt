<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
      <head>
        <title>Workflow notification</title>
      </head>
      <body>
        <h1>You have new Workflow notifications</h1>
        <p>
          Dear Team,
        </p>
        You have a new item in your Assignment List.
		<br/>
		Below Content Has been edited and waiting for your Approval.<a href="http://<CMS URL>/"> Please Take an Action </a>
        <ul>
          <xsl:for-each select="Workflow/Items">
			<li>
				<xsl:value-of select="Item"/>
			</li>
          </xsl:for-each>
        </ul>
		<p>
		<br />
		<br/>
          Thanks,<br/>
		  Tridion Support Team
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
