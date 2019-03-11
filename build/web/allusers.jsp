<%-- 
    Document   : allusers
    Created on : 20 Oct, 2016, 10:29:16 AM
    Author     : vasus
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <li class="menu-item"><a class="active" href="allusers.jsp">Registered users</a></li>
  <li class="menu-item"><a href="allproponsale.jsp">Properties for sale</a></li>
  <li class="menu-item"><a href="allproponrent.jsp">Properties for rent</a></li>
  <li class="menu-item"><a href="reqforpnestimate.jsp">Requests for PNestimate</a></li>
  <li class="menu-item"><a href="reqforloan.jsp">Requests for loan</a></li>
  <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>

</ul>
        <center>
        <br><table border="1">
            <tr>
                <td><center>Srno.</td>
                <td><center>Name</td>
                <td><center>Email-id</td>
                <td><center>Contact number</td>
                <td><center>I am</td>
            </tr>
            <% 
                    int flag=0;
                    int j=1;
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
                    String query="select * from users";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                int srno = j;
                                j++;
                                flag=1;
                                String name = rs.getString("name");
                                String email = rs.getString("email");
                                String contact = rs.getString("mobno");
                                String iam = rs.getString("iam");
    %>
    <tr>
        <td><center><%out.println(srno);%></center></td>
         <td><center><%out.println(name); %></td>
        <td><center><%out.println(email); %></td>
        <td><center><%out.println(contact); %></td>
        <td><center><%out.println(iam); %></td>
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
