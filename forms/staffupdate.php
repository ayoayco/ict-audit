<?php require_once('Connections/auditdata.php'); ?>
<?php
//initialize the session
if (!isset($_SESSION)) {
  session_start();
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

if ((isset($_POST["MM_update"])) && ($_POST["MM_update"] == "form1")) {
  $updateSQL = sprintf("UPDATE staff SET OfficeUnit=%s, NumberofSTaff=%s WHERE staffid=%s",
                       GetSQLValueString($_POST['OfficeUnit'], "text"),
                       GetSQLValueString($_POST['NumberofStaff'], "int"),
                       GetSQLValueString($_POST['staffid'], "int"));

  mysql_select_db($database_auditdata, $auditdata);
  $Result1 = mysql_query($updateSQL, $auditdata) or die(mysql_error());

  $updateGoTo = "staff.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
} ?>
<?php
$colname_rspr = "-1";
if (isset($_GET['staffid'])) {
  $colname_rspr = (get_magic_quotes_gpc()) ? $_GET['staffid'] : addslashes($_GET['staffid']);
}
mysql_select_db($database_auditdata, $auditdata);
$query_rspr = sprintf("SELECT * FROM staff WHERE staffid = %s", $colname_rspr);
$rspr = mysql_query($query_rspr, $auditdata) or die(mysql_error());
$row_rspr = mysql_fetch_assoc($rspr);
$totalRows_rspr = mysql_num_rows($rspr);

if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

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
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="all" />
<meta name="Rating" content="General" />
<meta name="Distribution" content="Global" />
<meta name="Revisit-after" content="1 Day" />
<title>Information Systems</title>

<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
function rate_times_work(form) {
rate=eval(form.rate.value)
work=eval(form.work.value)
c=rate*work
form.gross.value=c
}
function rate_times_work_times(form) {
rate=eval(form.rate.value)
work=eval(form.work.value)
c=rate*work*.1
form.tax.value=c
}
function tax_plus_other(form) {
tax=eval(form.tax.value)
other=eval(form.other.value)
c=tax+other
form.deduction.value=c
}

function rate_times_work_minus_deduction(form) {
rate=eval(form.rate.value)
work=eval(form.work.value)
deduction=eval(form.deduction.value)
c=rate*work-deduction
form.total.value=c
}
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
</SCRIPT>

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
	<li><a href="#">Computer Center</a>
        	<ul>
            <li><a href="server.php">Servers</a></li>
            <li><a href="network.php">Network and Telecommunications</a></li>
            <li><a href="software.php">Software</a></li>
            <li><a href="manpower.php">Manpower</a></li>
			</ul>
	</li>
    <li><a href="staff.php">Staff</a></li>
	    <li><a href="<?php echo $logoutAction ?>">Log out</a></li>
  </ul>
</div>
                
         <form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1" onsubmit="MM_validateForm('OfficeUnit','','R','NumberofStaff','','R');return document.MM_returnValue">
                  <p>&nbsp;</p>
                  <h3 align="center">Update</h3>
                 
                  <table width="603" align="center">
                    <tr valign="baseline">
                      <td align="right" nowrap="nowrap" class="first">&nbsp;</td>
                      <td class="first">&nbsp;</td>
                      <td class="first">&nbsp;</td>
                    </tr>
                    <tr valign="baseline">
                      <td width="159" align="right" nowrap="nowrap" class="first"><strong>Office Unit:</strong></td>
                      <td width="213" class="first"><input type="text" name="OfficeUnit" value="<?php echo $row_rspr['OfficeUnit']; ?>" size="20" /></td>
                      <td width="195" class="first">&nbsp;</td>
                    </tr>
                    <tr valign="baseline">
                      <td nowrap="nowrap" align="right" class="first">Number of Staffs: </td>
                      <td class="first"><input type="text" name="NumberofStaff" value="<?php echo $row_rspr['NumberofStaff']; ?>" size="20" /></td>
                      <td class="first">&nbsp;</td>
                    </tr>
                    <tr valign="baseline">
                      <td nowrap="nowrap" align="right" class="first">&nbsp;</td>
                      <td class="first">&nbsp;</td>
                      <td class="first">&nbsp;</td>
                    </tr>
                    <tr valign="baseline">
                      <td nowrap="nowrap" align="right" class="first"><input type="hidden" name="staffid" value="<?php echo $row_rspr['staffid']; ?>" /></td>
                      <td class="first">&nbsp;</td>
                      <td class="first"><div align="right">
                          <input type="reset" class="button" name="Reset" value="Reset" />
                          <input name="submit" type="submit" class="button" value="Update" />
                      </div></td>
                    </tr>
                  </table>
                  <p>
                     <input type="hidden" name="MM_update" value="form1">
           </p>
                  <p>&nbsp;</p>
         </form>

     <div id="footer">
</div>
</body>
</html>
<?php
mysql_free_result($rspr);
?>
