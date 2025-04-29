<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

  <!-- Match the root element of the XML (library) -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Menu Items</title>
        <style>
        
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            padding: 20px;
          }

          table {
            width: 40%;
            margin: 10px auto;
            border-collapse: collapse;
            background-color: #ffffff;
          }
          th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
          }
          th {
            background-color:rgb(247, 70, 126);
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1 align="center">Menu Items</h1>
        <table align="center">
          <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
          </tr>
          <!-- Loop through each book element -->
          <xsl:for-each select="/menu/item">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="category"/></td>
              <td><xsl:value-of select="price"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>