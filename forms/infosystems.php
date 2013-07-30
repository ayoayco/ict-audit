<?php require_once('Connections/auditdata.php');


	session_start();
	if(! isset( $_SESSION['myusername'] ) ){
		header("location:../notloggedin.php");
	}
	$super = 0;

	$sql = "select * from users WHERE username LIKE'".$_SESSION['myusername']."'";
	$result = mysql_query($sql);
	while($rows = mysql_fetch_array($result)){
		if(strcasecmp($rows['usertype'], 'super')==0 ){
			$super = 1;
		}
		else if(strcasecmp($rows['office'],'HRDO') == 0){
		  header("location:staff.php");
		}
		else if(strcasecmp($rows['office'],'SPMO') == 0){
		  header("location:workstation.php");
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
  $insertSQL = sprintf("INSERT INTO infosystems (InfoSystemName, InfoSystemDescription, InfoSystemStatus, InfoSystemDeployment, InfoSystemDevelopment, submittedBy, webBased) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['InfoSystemName'], "text"),
                       GetSQLValueString($_POST['InfoSystemDescription'], "text"),
                       GetSQLValueString($_POST['InfoSystemStatus'], "text"),
		       GetSQLValueString($_POST['InfoSystemDeployment'], "text"),
                       GetSQLValueString($_POST['InfoSystemDevelopment'], "text"),
		       GetSQLValueString($_SESSION['myusername'], "text"),
                       GetSQLValueString($_POST['webBased'], "text"));
  mysql_select_db($database_auditdata, $auditdata);
  $Result1 = mysql_query($insertSQL, $auditdata) or die(mysql_error());

  $insertGoTo = "infosystems.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}


/********************/

$sql2 = "select * from users where username ='".$_SESSION['myusername']."'";
$result2 = mysql_query($sql2);
$rows2 = mysql_fetch_array($result2);

	$query_emprecord = "SELECT * FROM infosystems WHERE submittedBy IN (SELECT username FROM users WHERE campus_unit LIKE '".$rows2['campus_unit']."') ORDER BY InfoSystemid DESC";
	
$emprecord = mysql_query($query_emprecord, $auditdata) or die(mysql_error());
$row_emprecord = mysql_fetch_assoc($emprecord);
$totalRows_emprecord = mysql_num_rows($emprecord);

$queryString_emprecord = "";
if (!empty($_SERVER['QUERY_STRING'])) {
  $params = explode("&", $_SERVER['QUERY_STRING']);
  $newParams = array();
  foreach ($params as $param) {
    if (stristr($param, "pageNum_emprecord") == false && 
        stristr($param, "totalRows_emprecord") == false) {
      array_push($newParams, $param);
    }
  }
  if (count($newParams) != 0) {
    $queryString_emprecord = "&" . htmlentities(implode("&", $newParams));
  }
}
$queryString_emprecord = sprintf("&totalRows_emprecord=%d%s", $totalRows_emprecord, $queryString_emprecord);
/*******************/

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<title>Information Systems | eUP ICT Audit Survey</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
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
	    <li class="highlight"><a href="infosystems.php">Information Systems </a></li>
	    <li><a href="databases.php">Databases</a></li>
		<?php if($super==1) echo '<li><a href="workstation.php">Hardware</a>
			<!--ul>
				<li><a href="workstation.php">Workstations</a></li>
				<li><a href="#upload.php">Upload a File</a></li>
			</ul-->
		</li>'?>
		<li><a href="server.php">Computer Center</a>
				<ul>
				<li><a href="server.php">Servers</a></li>
				<li><a href="network.php">Network and Telecommunications</a></li>
				<li><a href="software.php">Software</a></li>
				<li><a href="manpower.php">Personnel</a></li>
			</ul>
		</li>
		<?php if($super==1) echo '<li><a href="staff.php">Staff</a></li>'?>
	    <li><a href="<?php echo $logoutAction ?>">Log out</a></li>
  </ul>
</div>
<h1>Information Systems</h1>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1" onsubmit="MM_validateForm('InfoSystemName','','R','InfoSystemDescription','','R','InfoSystemStatus','','R','InfoSystemDeployment','','R','InfoSystemDevelopment','','R');return document.MM_returnValue">
  <table align="center">
    <tr valign="baseline">
      <td align="right" nowrap="nowrap">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr valign="baseline">
      <td width="188" align="right" nowrap="nowrap">Name:</td>
      <td width="428"><input type="text" name="InfoSystemName" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td height="22" align="right" nowrap="nowrap" style="vertical-align: top;">Brief Description:</td>
      <td><textarea type="text" name="InfoSystemDescription" value="" cols="58" rows="10" /></textarea></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Status:</td>
      <td><select name="InfoSystemStatus" id="InfoSystemStatus">
        <option></option>
        <option>Operational</option>
        <option>For Enhancement/Development</option>
        <option>Not Used</option>
      </select></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Deployment:</td>
      <td><input type="text" name="InfoSystemDeployment" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Development:</td>
      <td><select name="InfoSystemDevelopment" id="InfoSystemDevelopment">
        <option></option>
        <option>In-house</option>
        <option>Outsourced</option>
        <option>Open-source</option>
        <option>Proprietary</option>
      </select></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Web-based?</td>
      <td>
        <input type="radio" name="webBased" value="Yes" checked="checked">Yes</input>
        <input type="radio" name="webBased" value="No">No</input>
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td><div align="center"><br />
        <input type="reset" class="button" name="Reset" value="Reset" />
        <input name="submit" type="submit" class="button" value="Save" />
      </div></td>
    </tr>
    </tr><td>&nbsp;</td></tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1" />
</form>

<!----->
<?php
if ($totalRows_emprecord != 0) echo'<table class="dataTable">
  <tr>
    <th></th>
    <th bgcolor="#666666">Name</th>
    <th>Brief Description</th>
    <th>Status</th>
    <th>Deployment</th>
    <th>Development</th>
    <th>Web-based?</th>
    <th>Actions</th>
  </tr>'
?>

<?php
$count = 0;
if ($totalRows_emprecord == 0) { // Show if recordset empty ?>
<p align="center">No data from user yet.</p>
<?php } else do { ?>
  <tr class="row-a" valign="top">
    <td><?echo ++$count?></td>
    <td height="27"><?php echo $row_emprecord['InfoSystemName']; ?></td>
    <td><?php echo $row_emprecord['InfoSystemDescription']; ?></td>
    <td><?php echo $row_emprecord['InfoSystemStatus']; ?></td>
    <td><?php echo $row_emprecord['InfoSystemDeployment']; ?></td>
    <td><?php echo $row_emprecord['InfoSystemDevelopment']; ?></td>
    <td><?php echo $row_emprecord['webBased']; ?></td>
    <td><table>
	<tr>
	    <td><a href="infosystemupdate.php?InfoSystemid=<?php echo $row_emprecord['InfoSystemid']; ?>"  rel="facebox">Update</a></td>
	    <td><a href="infosystemdelete.php?InfoSystemid=<?php echo $row_emprecord['InfoSystemid']; ?>" onclick="return confirm('Continue Delete?')">Delete</a></td>
	</tr></table>
    </td>
  </tr>
  <?php } while ($row_emprecord = mysql_fetch_assoc($emprecord)); ?>

</table>


<!------>

<div id="footer">
  <div id="left_footer">
    <p>&nbsp;</p>
    </div>
    <div id="right_footer">


    </div>
</div>
</body>
</html>