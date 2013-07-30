<?php require_once('Connections/auditdata.php'); ?>
<?php
	session_start();
	if(! isset( $_SESSION['myusername'] ) ){
		header("location:../notloggedin.php");
	}


	$sql = "select * from users";
	$result = mysql_query($sql);
	while($rows = mysql_fetch_array($result)){
	  if($rows['username']==$_SESSION['myusername']){
		if($rows['usertype'] != 'user'){
		  header("location:../notloggedin.php");
		}
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
<?php
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  $theValue = (!get_magic_quotes_gpc()) ? addslashes($theValue) : $theValue;

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? "'" . doubleval($theValue) . "'" : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {

/** item	description	NetworkUnit	NetworkDeployment	bandwidth	MonthlyCost **/

  $insertSQL = sprintf("INSERT INTO network (item, description, NetworkUnit, NetworkDeployment, bandwidth, MonthlyCost, submittedBy) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['item'], "text"),
                       GetSQLValueString($_POST['description'], "text"),
		       GetSQLValueString($_POST['NetworkUnit'], "int"),
		       GetSQLValueString($_POST['NetworkDeployment'], "text"),
                       GetSQLValueString($_POST['bandwith'], "text"),
                       GetSQLValueString($_POST['MonthlyCost'], "text"),
                       GetSQLValueString($_SESSION['myusername'], "text"));
  mysql_select_db($database_auditdata, $auditdata);
  $Result1 = mysql_query($insertSQL, $auditdata) or die(mysql_error());

  $insertGoTo = "network.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<title>Network and Telecommunications</title>
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
	    <li><a href="workstation.php">Hardware</a></li>
            <li><a href="server.php">Computer Centers</a></li>
            <!--li><a href="network.php">Network and Telecommunications</a></li>
            <li><a href="software.php">Software</a></li>
            <li><a href="manpower.php">Manpower</a></li>
            <li><a href="upload.php">Upload File</a></li-->
		<li><a href="../logout.php">Log out</a></li>
    </ul>
</div>
<h1><a href="server.php">Servers</a> | Network and Telecommunications | <a href="software.php">Software</a> | <a href="#">Personnel</a></h1>
<!-- item	description	NetworkUnit	NetworkDeployment	bandwidth	MonthlyCost -->
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1" onsubmit="MM_validateForm('hubs','','R','routers','','R','switches','','R','wire','','R','internet','','R','video','','R','other','','R','NetworkUnit','','R','NetworkDeployment','','R','Bandwidth','','R','MonthlyCost','','R');return document.MM_returnValue">
  <table align="center">
    <tr valign="baseline">
      <td width="188" height="22" align="right" nowrap="nowrap"><div align="right">Item:</div></td>
      <td><select name="item" id="item">
        <option></option>
        <option>Hubs</option>
        <option>Routers</option>
        <option>Switches</option>
        <option>Wi-fi Access Points</option>
        <option>Modems</option>
        <option>Internet Connection (Dial-up)</option>
        <option>Internet Connection (Satellite)</option>
        <option>Internet Connection (DSL)</option>
        <option>Internet Connection (Land Line)</option>
        <option>Internet Connection (Wireless)</option>
        <option>Internet Connection (VIN)</option>
        <option>Video Conferencing</option>
        <option>Others</option>
      </select></td>
    </tr>
    <tr valign="baseline">
      <td height="22" align="right" nowrap="nowrap" style="vertical-align: top;">Description:</td>
      <td><textarea type="text" name="description" value="" cols="58" rows="10" /></textarea></td>
    </tr>
    <tr valign="baseline">
      <td align="right" nowrap="nowrap"><strong>Number of Units </strong></td>
      <td><input type="text" name="NetworkUnit" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td align="right" nowrap="nowrap"><strong>Deployment:</strong></td>
      <td><input type="text" name="NetworkDeployment" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td height="22" align="right" nowrap="nowrap">Bandwidth:</td>
      <td><input type="text" name="bandwidth" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td height="22" align="right" nowrap="nowrap">Monthly Cost:</td>
      <td><input type="text" name="MonthlyCost" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td><div align="right">
        <input name="back" type="submit" id="back" onclick="window.location.href='server.php'" value="Back" />
        <input type="reset" class="button" name="Reset" value="Reset" />
        <input name="submit" type="submit" class="button" value="Save and Continue" />
      </div></td>
    </tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<p class="additional">&nbsp;</p>
<div id="footer">
  <div id="left_footer">
    <p>&nbsp;</p>
  </div>
    <div id="right_footer">


    </div>
</div>
</body>
</html>
