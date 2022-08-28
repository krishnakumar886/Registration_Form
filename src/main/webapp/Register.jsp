<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
body {
	background: #eef1f3;
}

#body {
	position: relative;
	top: 2.5em;
	background: #166ee0;
	color: #fff;
	margin: auto;
	padding: 0.5em 2em 5em;
}

#message {
	margin-top: -.5em;
	color: #fff;
	letter-spacing: 1px;
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 1.5px;
	font-size: 1.5em;
	width: 500px;
	margin: 35px auto;
	text-align: center;
	font-family: 'Source Sans Pro', sans-serif;
}
.container td {
	font-size: 13px;
	font-weight: 600;
	color:white;
	font-family: "Poppins", sans-serif;
}
</style>
<script>
	function validate() {
		var fullname = document.form.fullname.value;
		var email = document.form.email.value;
		var username = document.form.username.value;
		var password = document.form.password.value;
		var conpassword = document.form.conpassword.value;

		if (fullname == null || fullname == "") {
			alert("Full Name can't be blank");
			return false;
		} else if (email == null || email == "") {
			alert("Email can't be blank");
			return false;
		} else if (username == null || username == "") {
			alert("Username can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		} else if (password != conpassword) {
			alert("Confirm Password should match with the Password");
			return false;
		}
	}
	
</script>
</head>
<body>
	<div id="body" class= "container">
		<div id="message">
			<center>
				<h2>
					 Registration Form
					<hr>
				</h2>
			</center>
		</div>
		<form name="form" action="RegisterServlet" method="post"
			onsubmit="return validate()">
			<table align="center">
				<tr>
					<td>Full Name</td>
					<td><input type="text" name="fullname" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" placeholder="ex:myname@example.com" /></td>
				</tr>
				<tr>
				<tr>
					<td>Username</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="conpassword" /></td>
				</tr>
				<tr>
				<tr>
					<td>Occupation</td>
					<td><input type="text" name="occupation" /></td>
				</tr>
				<tr>
					<td>Mobile No</td>
					<td><input type="text" name="mobileno" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				
				<tr>
					<td><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></td>
				</tr>
				<tr>
					<td></td>

					<td><input type="submit" value="Register"></input>&nbsp<input
						type="reset" value="Reset"></input></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>