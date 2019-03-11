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

        <li class="menu-item"><a class="active" href="pnestimate.jsp">PNestimate</a></li>
        <li class="menu-item"><a class="redbg" href="postfreeadd.jsp">Post property FREE</a></li>
        <li class="menu-item"><a href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
        <li class="menu-item" style="float:right"><a href="contactus.jsp">Contact us</a></li>
    </ul>
    <font size="5"><b>PN estimate</b> is the special feature of PN Property and Finance Solution. In which if you
    want to get the <b>valuation</b> of your own property, you have to <b>fill up</b> following request form.
    after successful submission, our team will visit your property and will give you a <b>proper & perfect</b>
    valuation of your property.</font><br>
    <h3>Request form:</h3>
    <form action="saverequest.jsp">
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
            <td><b>Address :</b></td>
            <td></td>
            <td><textarea name="reqadd" cols="50" rows="10"></textarea></td>
        </tr>
        <tr>
            <td><b>Expected value:</b></td>
            <td></td>
            <td><input type="text" name="reqval"></td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><input type="submit" value="submit"><td>
        </tr>
    </table>
        
        <%@include file="footer.html"%>
    </form>
</body>
</html>