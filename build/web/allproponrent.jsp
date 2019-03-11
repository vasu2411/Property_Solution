<%-- 
    Document   : allproponrent
    Created on : 19 Oct, 2016, 10:38:28 AM
    Author     : vasus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
ul {
    list-style-type: none;
    margin: 14px;
    padding: 0;
    overflow: hidden;
    background-color: #333;	
    width: 97%
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}

.redbg{
background-color: red;
}

.greenbg{
background-color: #4CAF50;
}

h2
{
    background-color: #4CAF50;
    color: white;
    width: 40%;
}
</style>
    </head>
    <body>
        <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>
<ul>
  <li class="menu-item"><a href="admin.jsp">Home</a></li>
  <li class="menu-item"><a href="allusers.jsp">Registered users</a></li>
  <li class="menu-item"><a href="allproponsale.jsp">Properties for sale</a></li>
  <li class="menu-item"><a class="active" href="allproponrent.jsp">Properties for rent</a></li>
  <li class="menu-item"><a href="reqforpnestimate.jsp">Requests for PNestimate</a></li>
  <li class="menu-item"><a href="reqforloan.jsp">Requests for loan</a></li>
  <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>

</ul>

       <br><table border="1">
                <tr>
                    <td><center>Srno.</td>
                    <td><center>Name</td>
                    <td><center>Contact</td>
                    <td><center>I am</td>
                    <td><center>Property for</td>
                    <td><center>Type of property</td>
                    <td><center>City</td>
                    <td><center>Locality</td>
                    <td><center>Society name</td>
                    <td><center>bedrooms</td>
                    <td><center>bathrooms</td>
                    <td><center>balconies</td>
                    <td><center>floor</td>
                    <td><center>total floors</td>
                    <td><center>Super built up area</td>
                    <td><center>Built up area</td>
                    <td><center>Carpet area</td>
                    <td><center>Type of transaction</td>
                    <td><center>Status</td>
                    <td><center>Expected price</td>
                    <td><center>Maintenance<br> /Month</td>
                    <td><center>description</td>
                </tr>    
    <% 
        int flag=0;
        int j=1;
            String pfor = "rent";
            Connection cn = null;
                    Statement st = null;
                    try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                    } catch (ClassNotFoundException ex) {
                       out.println("class notfound exception");
                    }
                    String dburl="jdbc:derby://localhost:1527/pnprop";
                    String uname = "vvs";
                    String upass = "vvs";
                    try {
                        cn=DriverManager.getConnection(dburl,uname,upass);
                    } catch (SQLException ex) {
                        out.println("connection problem");
                    }
                    try {
                        st=cn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    } catch (SQLException ex) {
                        out.println("statement creation problem");
                    }
                    String query="select * from properties where property_for='"+pfor+"' ";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                int srno = j;
                                j++;
                                flag=1;
                                String name = rs.getString("name");
                                String contact = rs.getString("contact");
                                String iam = rs.getString("iam");
                                String propfor = rs.getString("property_for");
                                String propertytype = rs.getString("type_of_property");
                                String city = rs.getString("city");
                                String localiti = rs.getString("locality");
                                String socname = rs.getString("society_name");
                                String bedroom = rs.getString("bedrooms");
                                String bathroom = rs.getString("bathrooms");
                                String balcony = rs.getString("balconies");
                                String floor = rs.getString("floor");
                                String totalfloor = rs.getString("total_floors");
                                String sbuarea = rs.getString("super_built_up_area");
                                String buarea = rs.getString("built_up_area");
                                String carea = rs.getString("carpet_area");
                                String transactiontype = rs.getString("type_of_transaction");
                                String status = rs.getString("status");
                                int expectedpri = rs.getInt("expected_price");
                                int maintenancemonthly = rs.getInt("maintenance");
                                String description = rs.getString("description");
   
    %>
                <tr>
                    <td><center><%out.println(srno);%></center></td>
                     <td><center><%out.println(name); %></td>
                    <td><center><%out.println(contact); %></td>
                    <td><center><%out.println(iam); %></td>
                    <td><center><%out.println(propfor); %></td>
                    <td><center><%out.println(propertytype); %></td>
                    <td><center><%out.println(city); %></td>
                    <td><center><%out.println(localiti); %></td>
                    <td><center><%out.println(socname); %></td>
                    <td><center><%out.println(bedroom); %></td>
                    <td><center><%out.println(bathroom); %></td>
                    <td><center><%out.println(balcony); %></td>
                    <td><center><%out.println(floor); %></td>
                    <td><center><%out.println(totalfloor); %></td>
                    <td><center><%out.println(sbuarea); %></td>
                    <td><center><%out.println(buarea); %></td>
                    <td><center><%out.println(carea); %></td>
                    <td><center><%out.println(transactiontype); %></td>
                    <td><center><%out.println(status); %></td>
                    <td><center><%out.println(expectedpri); %></td>
                    <td><center><%out.println(maintenancemonthly); %></td>
                    <td><center><%out.println(description); %></td>
                </tr>
                 <%   
                }

                st.close();
                cn.close();
                if(flag==0)
                {
                %>
                <tr>
                    <td colspan="21"><center><h1>No Matches found!!!</h1></td>
                </tr>
                <%
                }   
            } catch (SQLException ex) {
                out.println("Query execution problem");
            }
    %>
    </table><br>
        <%@include file="footer.html"%>
    </body>
</html>