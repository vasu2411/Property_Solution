<%-- 
    Document   : saveproperty
    Created on : 14 Oct, 2016, 2:16:04 AM
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
            String name = request.getParameter("name").toLowerCase();
            String contact = request.getParameter("contact");
            String iam = request.getParameter("iam").toLowerCase();
            String propfor = request.getParameter("pfor").toLowerCase();
            String proptype = request.getParameter("ptype").toLowerCase();
            String city = request.getParameter("pcity").toLowerCase();
            String locality = request.getParameter("plocality").toLowerCase();
            String socname = request.getParameter("psocname").toLowerCase();
            String bedroom = request.getParameter("bed");
            String bathroom = request.getParameter("bath");
            String balcony = request.getParameter("bal");
            String floor = request.getParameter("flo");
            String totalfloor = request.getParameter("totflo");  
            String sbuarea = request.getParameter("sbarea")+request.getParameter("unitsbarea");
            String buarea = request.getParameter("barea")+request.getParameter("unitbarea");
            String carea = request.getParameter("carea")+request.getParameter("unitcarea");
            String transactiontype = request.getParameter("typeoft").toLowerCase();
            String status = request.getParameter("pstatus").toLowerCase();
            int expectedpri = Integer.parseInt(request.getParameter("exppri"));
            int maintenancemonthly = Integer.parseInt(request.getParameter("maintenance"));
            String description = request.getParameter("pdescription").toLowerCase();
            
            
            
            /*out.println("iam:"+iam);
            out.println("Property For:"+propfor);
            out.println("Property type:"+proptype);
            out.println("City:"+city);
            out.println("locality:"+locality);
            out.println("Society name:"+socname);
            out.println("Bedrooms:"+bedroom);
            out.println("Bathrooms:"+bathroom);
            out.println("Balconies:"+balcony);
            out.println("Floor:"+floor);
            out.println("Total Floors:"+totalfloor);
            out.println("Super built-up area:"+sbuarea);
            out.println("built up area:"+buarea);
            out.println("Carpet area:"+carea);
            out.println("Transaction type:"+transactiontype);
            out.println("Status:"+status);
            out.println("Expected price:"+expectedpri);
            out.println("Maintenance:"+maintenancemonthly);
            out.println("Description:"+description);*/
            
            Connection cn = null;
            Statement st = null;
            String dburl = "jdbc:derby://localhost:1527/pnprop";
            String uname = "vvs";
            String upass = "vvs";
            try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            out.println("Class loaded");
            cn = DriverManager.getConnection(dburl, uname, upass);
            out.println("Connection made");
            String query = "insert into properties values('"+name+"','"+contact+"','"+iam+"','"+propfor+"','"+proptype+"','"+city+"','"+locality+"','"+socname+"','"+bedroom+"','"+bathroom+"','"+balcony+"','"+floor+"','"+totalfloor+"','"+sbuarea+"','"+buarea+"','"+carea+"','"+transactiontype+"','"+status+"',"+expectedpri+","+maintenancemonthly+",'"+description+"')";
            out.println("query initialized");
            st=cn.createStatement();
            out.println("Statement created");
            st.executeUpdate(query);
            out.println("Query executed");
            cn.close();
            response.sendRedirect("successsaveproperty.jsp");
            }
            catch(SQLException e)
            {
                   out.println(e.getMessage());     
            }
        %>
    </body>
</html>