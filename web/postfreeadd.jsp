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
        <li class="menu-item"><a href="loan.jsp">Loan</a></li>
        <li class="menu-item"><a href="howwework.jsp">How we work</a></li>
        <li class="menu-item" style="float:right"><a href="index.html">Logout</a></li>
        <li class="menu-item" style="float:right"><a href="contactus.jsp">Contact us</a></li>
    </ul>
    <font size="5"><b>Post</b> your <b>property</b> advertise in <b>free</b> of cost.</b></font><br>
    <h3>Post Property</h3>
    <form action="saveproperty.jsp">
    <table>
        <tr>
            <td><b>Name:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="name" required>
            </td>
        </tr>
        <tr>
            <td><b>Contact number:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="contact" required>
            </td>
        </tr>
        <tr>
            <td><b>I am:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="radio" name="iam" value="Owner" required> Owner
                <input type="radio" name="iam" value="Agent" required> Agent
                <input type="radio" name="iam" value="Builder" required> Builder
            </td>
        </tr>
        <tr>
            <td><b>Property Info:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td>Property For<input type="radio" name="pfor" value="sale" required> Sale
                <input type="radio" name="pfor" value="rent" required> Rent
            </td>
        </tr>
        <tr>
            <td><b>Type of Property:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="ptype" required>
                    <option value="Multistorey Apartment">Multistorey Apartment</option>
                    <option value="Builder Floor Apartment">Builder Flor Apartment</option>
                    <option value="Residental House">Residental House</option>
                    <option value="Residential Plot">Residential Plot</option>
                    <option value="Villa">Villa</option>
                    <option value="PentHouse">PentHouse</option>
                    <!--<option value="Commercial office Space">Commercial office Space</option>
                    <option value="Commercial Land">Commercial Land</option>
                    <option value="Commercial Shop">Commercial Shop</option>
                    <option value="Commercial Showroom">Commercial Showroom</option>
                    <option value="Godown">Godown</option>
                    <option value="Industrial shed">Industrial shed</option>
                    <option value="Industrial Building">Industrial Building</option>
                    <option value="Industrial Land">Industrial Land</option>
                    <option value="Farm House">Farm House</option>-->
                    
                </select>
            </td>
        </tr>
        <tr>
            <td><b>City:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="pcity" required>
            </td>
        </tr>
        <tr>
            <td><b>Locality:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="plocality" required>
            </td>
        </tr>
        <tr>
            <td><b>Name of Society/Project:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="psocname" required>
            </td>
        </tr>
        <tr>
            <td><b>Bedrooms:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="bed" required>
                    <option value="1" >1</option>
                    <option value="2" >2</option>
                    <option value="3" >3</option>
                    <option value="4" >4</option>
                    <option value="5" >5</option>
                    <option value="5+" >5+</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Bathrooms:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="bath" required>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="5+">5+</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Balconies:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="bal" required>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="5+">5+</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Floor:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="flo" required>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="10+">10+</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Total Floors:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><select name="totflo" required>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="10+">10+</option>
                </select>
                
            </td>
        </tr>
        <tr>
            <td><b>Super built-up area:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="sbarea" required>
                <select name="unitsbarea" required>
                    <option value="sq-yrd" >sq-yrd</option>
                    <option value="sq-ft">sq-ft</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Built-up area:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="barea">
                <select  name="unitbarea">
                    <option value="sq-yrd">sq-yrd</option>
                    <option value="sq-ft">sq-ft</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Carpet area:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="text" name="carea">
                <select  name="unitcarea">
                    <option value="sq-yrd">sq-yrd</option>
                    <option value="sq-ft">sq-ft</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><b>Type of transaction:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="radio" name="typeoft" value="resale" required> Resale
		<input type="radio" name="typeoft" value="new" required> New
                <input type="radio" name="typeoft" value="rerent" required> Rerent
            </td>
        </tr>
        <tr>
            <td><b>Status:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="radio" name="pstatus" value="ready" required> Ready
		<input type="radio" name="pstatus" value="under" required> Under Construction
            </td>
        </tr>
        <tr>
            <td><b>Expected price:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="number" name="exppri" required>
            </td>
        </tr>
        <tr>
            <td><b>Maintenance (Monthly):</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="number" name="maintenance" required>
            </td>
        </tr>
        <tr>
            <td><b>Description:</b></td>
            <td></td>
            <td></td>
            <td></td>
            <td><textarea name="pdescription" cols="50" rows="10"></textarea>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="submit" value="Submit">
            </td>
        </tr>
    </table>
        
        <%@include file="footer.html"%>
    </form>
</body>
</html>