<%-- 
    Document   : admin
    Created on : 27 Sep, 2016, 11:23:09 PM
    Author     : vasus
--%>

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
  <li class="menu-item"><a class="active" href="admin.jsp">Home</a></li>
   <li class="menu-item"><a href="allusers.jsp">Registered users</a></li>
  <li class="menu-item"><a href="allproponsale.jsp">Properties for sale</a></li>
  <li class="menu-item"><a href="allproponrent.jsp">Properties for rent</a></li>
  <li class="menu-item"><a href="reqforpnestimate.jsp">Requests for PNestimate</a></li>
  <li class="menu-item"><a href="reqforloan.jsp">Requests for loan</a></li>
  <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>

</ul>
        <marquee behavior="alternate" direction="left">
            <img src="C:\Users\vasus\Desktop\home.jpg" alt="">
            <img src="C:\Users\vasus\Desktop\home_1.jpg" alt="">
            <img src="C:\Users\vasus\Desktop\home_2.jpg" alt="">
        </marquee>
        <br>
        <center><h1>Welcome Admin to PN Property & Finance solution!!</h1></center>
        <h3>
        <%@include file="footer.html"%>
    </body>
</html>
