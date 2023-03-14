<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <style>
    table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
      padding: 16px;
      text-align:center;
    }
  </style> 
  <body>
    <h2>Bank Details</h2>
    <table>
      <tr bgcolor="#fff176">
        <th>Account Number</th>
        <th>Account Type</th>
        <th>Balance</th>
        <th>Customer Id</th>
        <th>Customer Name</th>
      </tr>
      <xsl:for-each select="BankAccount/BankAccountDetails">
        <tr>
          <td><xsl:value-of select="AccountNumber"/></td>
          <td><xsl:value-of select="AccountType"/></td>
          <td><xsl:value-of select="Balance"/></td>
          <td><xsl:value-of select="Customer_Id"/></td>
          <td><xsl:value-of select="CustomerName"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>