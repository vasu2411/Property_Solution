<%-- 
    Document   : successsaveloanrequest
    Created on : 19 Oct, 2016, 11:03:29 AM
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
h3
{
    background-color: #4CAF50;
			color: white;
                        width: 9%;
}

</style> 
    </head>
    <body>
        <center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>
    <ul>
        <li class="menu-item"><a href="user.jsp">Home</a></li>
        <li class="menu-item"><a href="buy.jsp">Buy</a></li>
        <li class="menu-item"><a href="rent.jsp">Rent</a></li>
        <li class="menu-item"><a href="pnestimate.jsp">PNestimate</a></li>
        <li class="menu-item"><a class="redbg" href="postfreeadd.jsp">Post property FREE</a></li>
        <li class="menu-item"><a class="active" href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
        <li class="menu-item" style="float:right"><a href="contactus.jsp">Contact us</a></li>
    </ul>
        <font size="5">Your <b>Loan</b> request has been successfully submitted.<b> We will contact you Soon.</b></font><br>
        <center>
        <font size=2px><br>&copy2016 PNPROPERTY.COM ALL RIGHTS RESERVED<br>
	Designed by: VVS Technologies pvt. ltd.</font>
        </center>
    </body>
</html>