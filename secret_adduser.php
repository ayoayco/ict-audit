<?php
	require_once('forms/Connections/auditdata.php');
	error_reporting(E_ALL);
	ini_set("display_errors",1);
	session_start();
	if(! isset( $_SESSION['myusername'] ) ){
		header("location:notloggedin.php");
	}


	$sql = "select * from users";
	$result = mysql_query($sql);
	while($rows = mysql_fetch_array($result)){
	  if($rows['username']==$_SESSION['myusername']){
		if($rows['usertype'] != 'admin'){
		  header("location:notloggedin.php");
		}
	  }
	}

?>
<html>
<head>

	<title>eUP ICT Audit Survey</title>
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
	<img id="logo" class="left" src="images/up-logo.gif" class="title-pic">
	<h1 class="left">eUP ICT Audit Survey</h1><div class="clear"></div>
	<div id="nav-div">
	  <ul id="nav-menu">
		<li><a href="secret_adduser.php">Users</a></li>
	    	<li><a href="admin.php">Information Systems </a></li>
	   	<li><a href="databases.php">Databases</a></li>
	    	<!--li><a href="#workstation.php">ICT Resources</a></li>
        	<li><a href="#upload.php">Uploaded Files</a></li-->
		<li><a href="logout.php">Log out</a></li>
	  </ul>
	</div>
  </div><div class="clear"></div>
  <div id="main">
	<div>
	<h3>Users (<a href="#login-box" class="login-window">Add</a>)</h3>
  
	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp</td><td>Name</td><td>Campus</td><td>Office</td><td>Username</td><td>Actions</td></tr>
		<?php
			$usercount = 0;
			$userType='user';
			$sql = "SELECT * FROM `users` WHERE `usertype`='user'";
			if($result = mysql_query($sql)){
			
				while($rows = mysql_fetch_assoc($result)){
				  echo "<tr><td>".++$usercount."</td><td>".$rows['name']."</td><td>".$rows['campus_unit']."</td><td>".$rows['office']."</td><td>".$rows['username']."</td><td><!--a href='#'>Edit</a--> <a href='delete_user.php'>Delete</a></td></tr>";
				}
			}
			else
			{
			    echo (mysql_error ());
			}
		 ?>
	</table>	
	</div>
	<div>
	<h3>Admin</h3>
  
	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp</td><td>Name</td><td>Campus</td><td>Office</td><td>Username</td><td>Actions</td></tr>
		<?php
			$usercount = 0;
			$userType='user';
			$sql = "SELECT * FROM `users` WHERE `usertype`='admin'";
			if($result = mysql_query($sql)){
			
				while($rows = mysql_fetch_assoc($result)){
				  echo "<tr><td>".++$usercount."</td><td>".$rows['name']."</td><td>".$rows['campus_unit']."</td><td>".$rows['office']."</td><td>".$rows['username']."</td><td><!--a href='#'>Edit</a--> <a href='delete_user.php'>Delete</a></td></tr>";
				}
			}
			else
			{
			    echo (mysql_error ());
			}
		 ?>
	</table>	
	</div>
	<div>
	<h3>Super Users</h3>
  
	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp</td><td>Name</td><td>Campus</td><td>Office</td><td>Username</td><td>Actions</td></tr>
		<?php
			$usercount = 0;
			$userType='user';
			$sql = "SELECT * FROM `users` WHERE `usertype`='super'";
			if($result = mysql_query($sql)){
			
				while($rows = mysql_fetch_assoc($result)){
				  echo "<tr><td>".++$usercount."</td><td>".$rows['name']."</td><td>".$rows['campus_unit']."</td><td>".$rows['office']."</td><td>".$rows['username']."</td><td><!--a href='#'>Edit</a--> <a href='delete_user.php'>Delete</a></td></tr>";
				}
			}
			else
			{
			    echo (mysql_error ());
			}
		 ?>
	</table>	
	</div>
	<div id="login-box" class="login-popup">
		<a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
		<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
			<tr>
				<form name="form1" method="post" action="add_user.php">
				<td>
					<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
						<tr>
							<td colspan="3"><strong>Add User </strong></td>
						</tr>
						<tr>
							<td width="78">Name</td>
							<td width="6">:</td>
							<td width="294"><input name="newname" type="text" id="newname"></td>
						</tr>
						<tr>
							<td width="78">Campus Unit</td>
							<td width="6">:</td>
							<td width="294"><select name="newcampus" id="newcampus">
								<option></option>
								<option>UP Diliman</option>
								<option>UPLB</option>
								<option>UP Baguio</option>
								<option>UP Manila</option>
								<option>UP Visayas</option>
								<option>UP Mindanao</option>
								<option>UP Open University</option>
								<option>UP System</option>
							  </select></td>
							 </td>
						</tr>
						<tr>
							<td width="78">Office</td>
							<td width="6">:</td>
							<td width="294"><input name="newoffice" type="text" id="newoffice"></td>
						</tr>
						<tr>
							<td width="78">Username</td>
							<td width="6">:</td>
							<td width="294"><input name="newusername" type="text" id="newusername"></td>
						</tr>
						<tr>
							<td>Password</td>
							<td>:</td>
							<td><input name="newpassword" type="text" id="newpassword"></td>
						</tr>
						<tr>
							<td width="78">User Type</td>
							<td width="6">:</td>
							<td width="294"><select name="newtype" id="newtype">
								<option></option>
								<option>user</option>
								<option>admin</option>
								<option>super</option>
							  </select></td>
							 </td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td><input type="submit" name="Submit" value="Add User"></td>
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
