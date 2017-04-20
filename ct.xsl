<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : ct.xsl
    Created on : May 3, 2016, 11:53 AM
    Author     : DELL
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Contact</title>
                <link rel="stylesheet" type="text/css" href="pro1.css"></link>
            </head>
            <body background="quill.png">
                <ul>
<li><a href="welcome.html">HOME</a></li>
<li><a href="pro1.html"> ME </a></li>
<li><a href="edu.html">EDUCATION</a></li>
<li><a href="int.html">HOBBIES</a></li>
<li><a href="contact.xml" style="background-color:white;color:black;text-decoration:underline;">CONTACT</a></li>
</ul>
<h1>CONTACT</h1>
                <table style="border:5px groove white; height:60%; width:60%;padding:10px;margin-top:160px; color:white; font-family: calibri; font-size:20;">
                    <xsl:for-each select="info/contact">
                    <tr >
                        <th >ADDRESS</th>
                        <td style="border:1px groove white; font-size:20;">
                            <xsl:value-of select="address"/>
                        </td>
                    </tr>
                    <tr style="border:5px solid white;">
                        <th >EMAIL</th>
                        <td style="border:1px groove white; font-size:20;">
                            <xsl:value-of select="email"/>
                        </td>
                    </tr>
                    <tr style="border:5px solid white;">
                        <th >BLOG</th>
                        <td style="border:1px groove white; font-size:20;">
                            <xsl:value-of select="blog"/>
                        </td>
                    </tr>
                    <tr style="border:5px solid white;">
                        <th >CONTACT NUMBER</th>
                        <td style="border:1px groove white; font-size:20;">
                            <xsl:value-of select="num"/>
                        </td>
                    </tr>
                    </xsl:for-each>
                    
                    </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
