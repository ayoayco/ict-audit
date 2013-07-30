<html>
<head>

	<title>ICT Audit Survey for eUP</title>
	<link rel="stylesheet" href="style.css" />

	<script type="text/javascript" src="jquery-1.4.2.min.js"></script>

	<script type="text/javascript">
	$(document).ready(function() {
		$('a.login-window').click(function() {
		
			// Getting the variable's value from a link 
			var loginBox = $(this).attr('href');

			//Fade in the Popup and add close button
			$(loginBox).fadeIn(300);
		
			//Set the center alignment padding + border
			var popMargTop = ($(loginBox).height() + 24) / 2; 
			var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
			$(loginBox).css({ 
				'margin-top' : -popMargTop,
				'margin-left' : -popMargLeft
			});
		
			// Add the mask to body
			$('body').append('<div id="mask"></div>');
			$('#mask').fadeIn(300);
		
			return false;
		});
	
		// When clicking on the button close or the mask layer the popup closed
		$('a.close, #mask').live('click', function() { 
		  $('#mask , .login-popup').fadeOut(300 , function() {
			$('#mask').remove();  
		}); 
		return false;
		});
	});
	</script>

</head>

<body>
<div id="body-div">
  <div id="header">
	<img id="logo" class="left" src="images/up-logo.png" class="title-pic">
	<h1 class="left">ICT Audit Survey for eUP</h1><div class="clear"></div>
	<div id="nav-div">
	  <ul id="nav-menu">
		<li><a href="#login-box" class="login-window">Sign In</a></li>
	  </ul>
	</div>
  </div><div class="clear"></div>
  <div id="main">
	<h1>Please sign in first!</h1>
	<p id="welcome">
	  Welcome to the Online ICT Audit Survey for eUP!
	</p>

	<div id="login-box" class="login-popup">
		<a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
		<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
			<tr>
				<form name="form1" method="post" action="check_login.php" class="signin">
				<td>
					<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
						<tr>
							<td colspan="3"><strong>User Login </strong></td>
						</tr>
						<tr>
							<td width="78">Username</td>
							<td width="6">:</td>
							<td width="294"><input name="myusername" type="text" id="myusername"></td>
						</tr>
						<tr>
							<td>Password</td>
							<td>:</td>
							<td><input name="mypassword" type="password" id="mypassword"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><input type="submit" name="Submit" value="Login"></td>
						</tr>
					</table>
				</td>
				</form>
			</tr>
		</table>
	</div>

  </div>
  <div id="footer">
	&copy; 2012. University of the Philippines. All Rights Reserved.
  </div>
</div>
</body>
</html>
