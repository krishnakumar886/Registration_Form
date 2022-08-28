<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Successful Message Example</title>
<style>
body {
	background: #eef1f3;
}

#card {
	position: relative;
	width: 500px;
	display: block;
	margin: 50px auto;
	text-align: center;
	font-family: 'Source Sans Pro', sans-serif;
}

#upper-side {
	padding: 5em;
	background-color: #166ee0;
	display: block;
	color: #fff;
	border-top-right-radius: 8px;
	border-top-left-radius: 8px;
}

#status {
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: 2em;
	margin-top: -.2em;
	margin-bottom: 0;
}

#lower-side {
	padding: 2em 2em 5em 2em;
	background: #fff;
	display: block;
	border-bottom-right-radius: 8px;
	border-bottom-left-radius: 8px;
}
</style>
</head>
<body>
	<section>
		<div id='card' class="animated fadeIn">
			<div id='upper-side'>

				<h3 id='status'>Success</h3>
			</div>
			<div id='lower-side'>
				<p id='message'>Congratulations, your have sucessfully
					registered.</p>
				<a href="Register.jsp" id="contBtn">ok</a>
			</div>
		</div>
	</section>
</body>
</html>