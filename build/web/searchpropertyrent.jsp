<%-- 
    Document   : searchpropertyrent
    Created on : 17 Oct, 2016, 12:20:18 AM
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

h3
{
    background-color: #4CAF50;
			color: white;
                        width: 20%;
}
</style>
    </head>
    <body>
       <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>
    <ul>
        <li class="menu-item"><a href="user.jsp">Home</a></li>
        <li class="menu-item"><a href="buy.jsp">Buy</a></li>
        <li class="menu-item"><a class="active" href="rent.jsp">Rent</a></li>
        <li class="menu-item"><a href="pnestimate.jsp">PNestimate</a></li>
        <li class="menu-item"><a class="redbg" href="postfreeadd.jsp">Post property FREE</a></li>
        <li class="menu-item"><a href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="contactus.jsp">Contact us</a></li>
    </ul>
    <center><h3>Search your Dream Property.</h3><br>
        <form action="searchpropertyrent.jsp">
        <table>
            <tr>
                <td><b>Locality:</b></td>
                <td></td>
                <td></td>
                <td><input type="text" name="locality" required><td>
            </tr>
            <tr>
                <td><b><br>Property type:</b></td>
                <td></td>
                <td></td>
                <td><br><select name="ptype" required>
                    <option value="Multistorey Apartment">Multistorey Apartment</option>
                    <option value="Builder Floor Apartment">Builder Flor Apartment</option>
                    <option value="Residental House">Residental House</option>
                    <option value="Residential Plot">Residential Plot</option>
                    <option value="Villa">Villa</option>
                    <option value="PentHouse">PentHouse</option>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Budget:</b>
                </td>
                <td></td>
                <td></td>
                <td><br>Min:<input type="number" name="minbudget" required><br><br>
                    Max:<input type="number" name="maxbudget" required>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><br><input type="submit" value="Search" required></td>
            </tr>
        </table>
    </center>
    </form>
        <br><table border="1">
                <tr>
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
            String loc = request.getParameter("locality").toLowerCase();
            String proptype = request.getParameter("ptype").toLowerCase();
            int min = Integer.parseInt(request.getParameter("minbudget"));
            int max = Integer.parseInt(request.getParameter("maxbudget"));
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
                    String query="select * from properties where property_for='"+pfor+"' and locality='"+loc+"' and  type_of_property='"+proptype+"' and expected_price>="+min+" and expected_price<="+max+" ";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
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
                     <td><center><%out.println(name); %></td>
                    <td><center><%out.println(contact); %></td>
                    <td><center><%out.println(iam); %></td>
                    <td><center><%out.println(propfor); %></td>
                    <td><center><%out.println(proptype); %></td>
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
    <%/*String iam = rs.getString("iam");
                                String propfor = rs.getString("property_for");
                                String proptype = rs.getString("type_of_property");
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
                                String expectedpri = rs.getString("expected_price");
                                String maintenancemonthly = rs.getString("maintenance");
                                String description = rs.getString("description");
                                out.println("iam:"+iam);
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
                                out.println("Description:"+description);*/%>
        </table>                    
        <center>
        <br><font size=2px>&copy2016 PNPROPERTY.COM ALL RIGHTS RESERVED<br>
	Designed by: VVS Technologies pvt. ltd.</font>
        </center>
    </body>
</html>