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
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
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
        <br><%@include file="footer.html"%>
</body>
</html>