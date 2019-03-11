<%-- 
    Document   : reqforpnestimate
    Created on : 19 Oct, 2016, 10:41:12 AM
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
              <li class="menu-item"><a href="allproponrent.jsp">Properties for rent</a></li>
              <li class="menu-item"><a class="active" href="reqforpnestimate.jsp">Requests for PNestimate</a></li>
              <li class="menu-item"><a href="reqforloan.jsp">Requests for loan</a></li>
              <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
            </ul>
       <br><center><table border="1">
                        <tr>
                            <td><center>Srno.</td>
                            <td><center>Name</td>
                            <td><center>Contact</td>
                            <td><center>Address</td>
                            <td><center>Expected value</td>                                      
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
                    String query="select * from requests";
                            ResultSet rs;
                        try {
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                int srno = j;
                                j++;
                                flag=1;
                                String name = rs.getString("name");
                                String contact = rs.getString("contactnum");
                              String add = rs.getString("address");
                                String expectval = rs.getString("expectval");
                                
    %>
                        <tr>
                            <td><center><%out.println(srno);%></center></td>
                             <td><center><%out.println(name); %></td>
                            <td><center><%out.println(contact); %></td>
                            <td><center><%out.println(add); %></td>
                            <td><center><%out.println(expectval); %></td>
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