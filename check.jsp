<%-- 
    Document   : check
    Created on : May 1, 2016, 10:17:37 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>"
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
    </head>
    <body>
                <%
            try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user_database","root","");
        PreparedStatement pt=con.prepareStatement("select first_name from user_table where user_name=?");
        String n=request.getParameter("username");
        String p=request.getParameter("password");
        pt.setString(1,n);
       
        ResultSet rs=pt.executeQuery("select * from user_table");
        int flag=0;
        int flag2=0;
        int flag3=0;
        while(rs.next())
        {
            if(rs.getString("user_name").equals(request.getParameter("username")))
            {
              flag++;
              
                if(rs.getString("password").equals(request.getParameter("password")))
                 {
                  flag2++;
                 if(rs.getString("status").equals("paid"))
                 {
                     flag3++;
                 }
                 }
             }
        }
        
        if(flag!=0)
         {
            if(flag2!=0)
            {
                if(flag3!=0)
                {
                response.sendRedirect("pro2.html");
                }
                else
                {
                    response.sendRedirect("not_paid.html");
                }
            }
            else
                {
                        response.sendRedirect("wrong.html");
                        }
            }
         
        else
         {
            response.sendRedirect("wrong2.html");
        }
            }
            catch(Exception e){
response.sendRedirect("not_paid.html");                
//out.println(e);
            }
        %>
    </body>
</html>
