<%-- 
    Document   : gate
    Created on : May 1, 2016, 5:09:22 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       try
       {
           String paid="paid";
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_database","root","");
       PreparedStatement pt=con.prepareStatement("update user_table set status='paid' where user_name=?");
       
       String n=request.getParameter("username");
        String p=request.getParameter("password");
        pt.setString(1,n);
       pt.executeUpdate();
        ResultSet rs=pt.executeQuery("select * from user_table");
        int flag=0;
        int flag2=0;
        while(rs.next())
        {
            if(rs.getString("user_name").equals(request.getParameter("username")))
            {
              flag++;
              
                if(rs.getString("password").equals(request.getParameter("password")))
                 {
                  flag2++;
                 }
             }
        }
        
        if(flag!=0)
         {
            if(flag2!=0){response.sendRedirect("success.html");}
            }
         
        else
        {
            response.sendRedirect("wrng_gate.html");
        
              }
       }
       catch(Exception e)
       {
       out.println(e);
       }
       %>
    </body>
</html>
