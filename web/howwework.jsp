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
        <li class="menu-item"><a href="user.jsp">Home</a></li>
        <li class="menu-item"><a href="buy.jsp">Buy</a></li>
        <li class="menu-item"><a href="rent.jsp">Rent</a></li>
        
        <li class="menu-item"><a href="pnestimate.jsp">PNestimate</a></li>
        <li class="menu-item"><a class="redbg" href="postfreeadd.jsp">Post property FREE</a></li>
        <li class="menu-item"><a href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a class="active" href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
        <li class="menu-item" style="float:right"><a href="contactus.jsp">Contact us</a></li>
    </ul>
    <ol type="1">
        <h3><li>After filling up request form we will contact you.</li><br>
        <li>we will take your appointment to visit your property.</li><br>
        <li>we will visit your requested property and will give you a proper & perfect valuation.</li><br>
        <li>we will take your sign on agreement(property contract).</li><br>
        <li>we will take 3 month time-limit to sale your property and 1 month time-limit to give your property on rent.</li><br>
        <li>we will do marketing of your property and will try to sale your property or to give your property on rent as soon as possible.</li><br>
        <li>After confirming the deal we will manage your property's paper file. also manage in case of loan.</li><br>
        <li>from signing agreement to finalize the deal, we will stay in contact in each other and also meet personally when required.</li><br>
        <li>For sale, When the deal is finalize you have to pay 2%(property<1 cr) or 1%(property>1 cr) of finalized value of property.</li><br>
        <li>For rent, When the deal is finalize you have to pay 1 month rent.
         </h3>   
    </ol>
        <br><%@include file="footer.html"%>
</body>
</html>

