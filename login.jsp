<%-- 
    Document   : login
    Created on : Apr 26, 2016, 9:41:55 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_database","root","");
        PreparedStatement pt=con.prepareStatement("insert into user_table values(?,?,?,?,?,?,?,?,?,?,?)");
        pt.setString(1,request.getParameter("first"));
        pt.setString(2,request.getParameter("last"));
        pt.setString(3,request.getParameter("dob"));
        pt.setString(4,request.getParameter("mail"));
        pt.setString(5,request.getParameter("mobile"));
        pt.setString(6,request.getParameter("g"));
        pt.setString(7,request.getParameter("course"));
        pt.setString(8,request.getParameter("usn"));
        pt.setString(9,request.getParameter("pass"));
        pt.setString(10,request.getParameter("pass"));
        pt.setString(11,request.getParameter("not paid"));
        
        pt.executeUpdate();
        
            response.sendRedirect("pay_or_not.html");
            }
            catch(Exception e)
            {
            out.println(e);
            }
        %>
    </body>
</html>
