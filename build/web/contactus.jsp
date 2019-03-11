<%-- 
    Document   : contactus
    Created on : 2 Oct, 2016, 10:56:23 PM
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
div
{
    margin:14px;
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
        <li class="menu-item"><a href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
        <li class="menu-item" style="float:right"><a class="active" href="contactus.jsp">Contact us</a></li>
    </ul>
        </center>
        <div>
        <b><font size="6">1. Virendra shah<br></font></b>
                <table>
                    <tr>
                        <td><b>Mobile no :
                        <td>+91 98257 77920
                    </tr>
                    <tr>
                        <td><b>Whatsapp no :
                        <td>+91 98257 77920
                    </tr>
                    <tr>
                        <td><b>Email id :
                        <td>virendra@pnproperty.com
                    </tr>
                    <tr>
                        <td><b>Department :
                        <td>Real estate
                    </tr>
                </table>
        <br>
            <b><font size="6">2. Keyur shah<br></font></b>
                <table>
                    <tr>
                        <td><b>Mobile no :
                        <td>+91 96870 57027
                    </tr>
                    <tr>
                        <td><b>Whatsapp no :
                        <td>+91 96870 57027
                    </tr>
                    <tr>
                        <td><b>Email id :
                        <td>keyur@pnproperty.com
                    </tr>
                    <tr>
                        <td><b>Department :
                        <td>Real estate
                    </tr>
                </table>
            <br>
            <b><font size="6">3. Hitendra patel<br></font></b>
                <table>
                    <tr>
                        <td><b>Mobile no :
                        <td>+91 9909912927
                    </tr>
                    <tr>
                        <td><b>Whatsapp no :
                        <td>+91 9909912927
                    </tr>
                    <tr>
                        <td><b>Email id :
                        <td>hitendra@pnfinance.com
                    </tr>
                    <tr>
                        <td><b>Department :
                        <td>Finance
                    </tr>
                </table>
        </div>
        <%@include file="footer.html"%>
    </body>
</html>