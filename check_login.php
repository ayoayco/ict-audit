<?php


	$host="localhost"; // Host name 
	$username="ict-audit-user"; // Mysql username 
	$password="qLWQACF4DUPyVNH9"; // Mysql password 
	$db_name="ict-audit"; // Database name 
	$tbl_name="users"; // Table name 

	// Connect to server and select databse.
	mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
	mysql_select_db("$db_name")or die("cannot select DB");

	// username and password sent from form 
	$myusername=$_POST['myusername']; 
	$mypassword=md5($_POST['mypassword']); 

	// To protect MySQL injection (more detail about MySQL injection)
	$myusername = stripslashes($myusername);
	$mypassword = stripslashes($mypassword);
	$myusername = mysql_real_escape_string($myusername);
	$mypassword = mysql_real_escape_string($mypassword);
	
	
	$sql="SELECT * FROM $tbl_name WHERE username='$myusername' and password='$mypassword'";
	$result=mysql_query($sql);

	// Mysql_num_row is counting table row
	$count=mysql_num_rows($result);
	

	// If result matched $myusername and $mypassword, table row must be 1 row
	if($count==1){
		session_start();
		$_SESSION['myusername'] = $_POST['myusername'];
		//header("location:success.php");
		if($row = mysql_fetch_array($result)){
			if($row['usertype']=="admin"){
				header("location:admin.php");}
			else{
				header("location:forms/infosystems.php");
			}
		}
	}
	else {
		echo "<meta http-equiv='Refresh' content='0; url=index2.php'>";
	}
?>
