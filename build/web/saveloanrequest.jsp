<%-- 
    Document   : saveloanrequest
    Created on : 19 Oct, 2016, 11:00:38 AM
    Author     : vasus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("reqname").toLowerCase();
            String contno = request.getParameter("reqmob");
            String add = request.getParameter("reqadd").toLowerCase();
            int expval = Integer.parseInt(request.getParameter("reqval").toLowerCase());
            int sal = Integer.parseInt(request.getParameter("reqsal").toLowerCase());
            Connection cn = null;
            Statement st = null;
            String dburl = "jdbc:derby://localhost:1527/pnprop";
            String uname = "vvs";
            String upass = "vvs";
            try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            cn = DriverManager.getConnection(dburl, uname, upass);
            String query = "insert into loanrequests values('"+name+"','"+contno+"','"+add+"',"+expval+","+sal+")";
            st=cn.createStatement();
            st.executeUpdate(query);
            cn.close();
            response.sendRedirect("successsaveloanrequest.jsp");
            }
            catch(SQLException e)
            {
                   out.println("error");     
            }
        %>
    </body>
</html>