<%-- 
    Document   : register
    Created on : 26 Sep, 2016, 1:31:08 AM
    Author     : vasus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
	<style>
		input[type=submit]
		{
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 12.5%;
		}
		input[type=button]
		{
			background-color: #f44336;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 12.5%;
		}
		h2
		{
			background-color: #4CAF50;
			color: white;
			width: 40%;
		}
		input[type=text], input[type=password] 
		{	
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
		}
	</style>
	<body>
	<form action="insertion" method="post">

	<div class="company">
			<center><h2>PN PROPERTY & FINANCE SOLUTION</h2></center>
	</div>
	<div class="container">
		<center>
		<table>
		<col width="150">
		<col width="300">
		<tr>
			<td><label><b>Name:</b></label>
			<td><input type="text" name="uname" placeholder="Name" required><br>
		</tr>
		<tr>
			<td><label><b>Email:</b></label>
			<td><input type="text" name="uid" placeholder="abc@xyz.com" required><br>
		</tr>	
		<tr>
			<td><label><b>Password:</b></label>
			<td><input type="password" name="upass" placeholder="Password" required><br>
		</tr>	
		<tr>
			<td><label><b>Mobile number:</b></input>
			<td><input type="text" name="umobileno" placeholder="Mobile number" required><br>
		</tr>
		<tr>
			<td><label><b>I am:</b></label<> 
			<td><input type="radio" name="iam" value="Buyer/Owner"> Buyer/Owner
			<input type="radio" name="iam" value="Agent"> Agent
			<input type="radio" name="iam" value="Builder"> Builder<br>
		</tr>
		</table>
		<br><font size="2">By Clicking Sign up, you agree to PN PROPERTY T & C</font><br>
		
		
		<input type="submit" value="Sign up" name="signup">
		<a href="index.html"><input type="button" class="cancelbtn" value="Cancel"></a><br>
 		</center>
	</div>
	</form>
            <br><%@include file="footer.html"%>
	</body>
</html>