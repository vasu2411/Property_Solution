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
                        width: 12%;
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
    <font size="5">If you want to <b>get loan</b> or want to <b>get knowledge about loan, interest rates</b> of different-different 
    banks, <b>required papers</b> for loan etc. please fill up the following form.<br>
    We provide loans from <b>HDFC bank, ICICI bank, AXIS bank, INDIA BULL bank</b> etc.</font>
    <h3>Loan Request form:</h3>
    <form action="saveloanrequest.jsp">
    <table>
        <tr>
            <td><b>Name :</b></td>
            <td></td>
            <td><input type="text" name="reqname"></td>
        </tr>
        <tr>
            <td><b>Contact Number :</b></td>
            <td></td>
            <td><input type="text" name="reqmob"></td>
        </tr>
        <tr>
            <td><b>Residental/Office Address :</b></td>
            <td></td>
            <td><textarea name="reqadd" cols="50" rows="10"></textarea></td>
        </tr>
        <tr>
            <td><b>Expected Loan amount:</b></td>
            <td></td>
            <td><input type="number" name="reqval"></td>
        </tr>
        <tr>
            <td><b>Salary (/month):</b></td>
            <td></td>
            <td><input type="number" name="reqsal"></td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><input type="submit" value="submit"><td>
        </tr>
    </table>
        <br><%@include file="footer.html"%>
</body>
</html>