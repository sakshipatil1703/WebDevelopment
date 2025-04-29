<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Report</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f8f9fa;
          }
          h1, h2 {
            text-align: center;
          }
          table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
          }
          th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
          }
          th {
            background-color: #343a40;
            color: white;
          }
          .pass {
            color: green;
            font-weight: bold;
          }
          .fail {
            color: red;
            font-weight: bold;
          }
        </style>
      </head>
      <body>

        <!-- Full Student Table -->
        <h1>All Student Records</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Roll No</th>
            <th>Branch</th>
            <th>Percentage</th>
          </tr>
          <xsl:for-each select="/students/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="roll"/></td>
              <td><xsl:value-of select="branch"/></td>
              <td><xsl:value-of select="percentage"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Passed Students -->
        <h2>Passed Students (Percentage ≥ 40%)</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Percentage</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="/students/student">
            <xsl:if test="percentage &gt;= 40">
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="percentage"/></td>
                <td class="pass">Pass</td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

        <!-- Failed Students -->
        <h2>Failed Students (Percentage &lt; 40%)</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Percentage</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="/students/student">
            <xsl:if test="percentage &lt; 40">
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="percentage"/></td>
                <td class="fail">Fail</td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
