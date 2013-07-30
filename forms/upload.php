<?php require_once('Connections/auditdata.php'); ?>
<?php

	session_start();
	if(! isset( $_SESSION['myusername'] ) ){
		header("location:../notloggedin.php");
	}


	$sql = "select * from users WHERE username LIKE'".$_SESSION['myusername']."'";
	$result = mysql_query($sql);
	while($rows = mysql_fetch_array($result)){
		if($rows['usertype'] == 'super'){break;}
		else if(($rows['usertype'] != 'user') ){
		  header("location:../notloggedin.php");
		}
	}

// ** Logout the current user. **
$logoutAction = $_SERVER['PHP_SELF']."?doLogout=true";
if ((isset($_SERVER['QUERY_STRING'])) && ($_SERVER['QUERY_STRING'] != "")){
  $logoutAction .="&". htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_GET['doLogout'])) &&($_GET['doLogout']=="true")){
  //to fully log out a visitor we need to clear the session varialbles
  $_SESSION['MM_Username'] = NULL;
  $_SESSION['MM_UserGroup'] = NULL;
  $_SESSION['PrevUrl'] = NULL;
  unset($_SESSION['MM_Username']);
  unset($_SESSION['MM_UserGroup']);
  unset($_SESSION['PrevUrl']);
	
  $logoutGoTo = "index.php";
  if ($logoutGoTo) {
    header("Location: $logoutGoTo");
    exit;
  }
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<title>Information Systems</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />


<style type="text/css">
h1 a {
  color: blue;
  text-decoration: underline;
}
</style>

<script type="text/JavaScript">

<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_validateForm() { //v4.0
  var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    if (val) { nm=val.name; if ((val=val.value)!="") {
      if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
      } else if (test!='R') { num = parseFloat(val);
        if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
          min=test.substring(8,p); max=test.substring(p+1);
          if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
    } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
  } if (errors) alert('The following error(s) occurred:\n'+errors);
  document.MM_returnValue = (errors == '');
}

//-->
</script>
    <script type="text/javascript" src="java/jquery.js"></script>
    <script type="text/javascript" src="java/menu.js"></script>
    
</head>

<body>

<?php
	$sql = "select * from users where username='".$_SESSION['myusername']."'";
	$result = mysql_query($sql);
	echo "<h2>";
	while($row = mysql_fetch_array($result)){
		echo 'Welcome, '.$row['name'];
		echo '!';
	}
	echo "</h2><br />";
?>
<div id="menu">
  <ul class="menu">
	    <li><a href="infosystems.php">Information Systems </a></li>
	    <li><a href="databases.php">Databases</a></li>
	<li><a href="workstation.php">Hardware</a>
        	<ul>
		    <li><a href="workstation.php">Workstations</a></li>
		    <li><a href="#upload.php">Upload a File</a></li>
		</ul>
	</li>
	<li><a href="server.php">Computer Center</a>
        	<ul>
		    <li><a href="server.php">Servers</a></li>
		    <li><a href="network.php">Network and Telecommunications</a></li>
		    <li><a href="software.php">Software</a></li>
		    <li><a href="manpower.php">Personnel</a></li>
		</ul>
	</li>
    <li><a href="staff.php">Staff</a></li>
	    <li><a href="<?php echo $logoutAction ?>">Log out</a></li>
  </ul>
</div>
<h1><a href="workstation.php">Workstations</a> | Upload a File</h1>

<form action="upload_file.php" method="post" enctype="multipart/form-data">
	<label for="file">Filename:</label>
	<input type="file" name="file" id="file"><br />
	<input type="submit" name="submit" class="button" value="Submit">
</form>
 

<div id="footer">
  <div id="left_footer">
    <p>&nbsp;</p>
  </div>
    <div id="right_footer">


    </div>
</div>
</body>
</html>
