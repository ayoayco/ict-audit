<!--<?php
	session_start();
	if(!session_is_registered(myusername)){ //if not registered, report user needs to log in
		header("location:notloggedin.php");
	}
?>-->

<html>
<head>

	<title>ICT Audit Survey for eUP</title>
	<link rel="stylesheet" href="style.css" />

</head>

<body>
<div id="body-div">
  <div id="header">
	<img id="logo" class="left" src="images/up-logo.gif" class="title-pic">
	<h1 class="left">ICT Audit Survey for eUP</h1><div class="clear"></div>
	<div id="nav-div">
	  <ul id="nav-menu">
		<li><a href="logout.php">Sign Out</a></li>
	  </ul>
	</div>
  </div><div class="clear"></div>
  <div id="main">
	<h1>Login Successful!</h1>
	<p id="welcome">
	  Welcome to the Online ICT Audit Survey for eUP!
	</p>
  </div>
  <div id="footer">
	&copy; 2012. University of the Philippines. All Rights Reserved.
  </div>
</div>
</body>
</html>
