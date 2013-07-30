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
  $insertSQL = sprintf("INSERT INTO database_tb (dbname, isss, dbcontent, dbstatus, dbstorage, submittedBy, operational, updated) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['dbname'], "text"),
                       GetSQLValueString($_POST['isss'], "text"),
                       GetSQLValueString($_POST['dbcontent'], "text"),
		       GetSQLValueString($_POST['dbstatus'], "text"),
                       GetSQLValueString($_POST['dbstorage'], "text"),
		       GetSQLValueString($_SESSION['myusername'] ,"text"),
                       GetSQLValueString($_POST['operational'], "text"),
                       GetSQLValueString($_POST['updated'], "text"));
  mysql_select_db($database_auditdata, $auditdata);
  $Result1 = mysql_query($insertSQL, $auditdata) or die(mysql_error());

  $insertGoTo = "databases.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}


/***********/

$sql2 = "select * from users where username ='".$_SESSION['myusername']."'";
$result2 = mysql_query($sql2);
$rows2 = mysql_fetch_array($result2);

	$query_emprecord = "SELECT * FROM database_tb WHERE submittedBy IN (SELECT username FROM users WHERE campus_unit LIKE '".$rows2['campus_unit']."') ORDER BY dbid DESC";
	
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
/***********/

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style.css" rel="stylesheet" type="text/css" />
<title>Databases</title>
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
	    <li><a href="infosystems.php">Information Systems </a></li>
	    <li class="highlight"><a href="databases.php">Databases</a></li>
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
<h1>Databases</h1>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1" onsubmit="MM_validateForm('dbname','','R','isss','','R','dbcontent','','R','dbstatus','','R','dbstorage','','R');return document.MM_returnValue">
  <table align="center">
    <tr valign="baseline">
      <td align="right" nowrap="nowrap">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr valign="baseline">
      <td width="188" align="right" nowrap="nowrap">Name:</td>
      <td width="428"><input type="text" name="dbname" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td height="22" align="right" nowrap="nowrap">IS/Subsystem Served:</td>
      <td><input type="text" name="isss" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right" style="vertical-align: top;">General Content:</td>
      <td><textarea type="text" name="dbcontent" value="" cols="58" rows="10" /></textarea></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Remarks:</td>
      <td><input type="text" name="dbstatus" id="dbstatus" value="" size="60" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Operational?</td>
      <td>
	<input type="radio" name="operational" value="Yes" checked="checked">Yes</input>
	<input type="radio" name="operational" value="No">No</input>
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Updated?</td>
      <td>
	<input type="radio" name="updated" value="Yes" checked="checked">Yes</input>
	<input type="radio" name="updated" value="No">No</input>
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right" style="vertical-align: top;">Storage Media Used:</td>
      <td><textarea type="text" name="dbstorage" value="" cols="58" rows="10" /> </textarea>
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td><div align="center"><br />
        <input type="reset" class="button" name="Reset" value="Reset" />
        <input name="submit" type="submit" class="button" value="Save" /><br />
      </div></td>
    </tr>
    </tr><td>&nbsp;</td></tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1" />
</form>

<!-------->
<?php
$count = 0;
if ($totalRows_emprecord != 0)
echo '<table class="dataTable">
  <tr>
    <th></th>
    <th>Database Name</th>
    <th>IS/Subsystem Served</th>
    <th>General Content </th>
    <th>Remarks</th>
    <th>Operational?</th>
    <th>Updated?</th>
    <th>Storage</th>
    <th>Actions</th>
  </tr>'
?>
<?php if ($totalRows_emprecord == 0) { // Show if recordset empty ?>
<p align="center">No data from user yet.</p>
<?php } else do { ?>
  <tr class="row-a" valign="top">
    <td><?echo ++$count;?></td>
    <td height="27"><?php echo $row_emprecord['dbname']; ?></td>
    <td><?php echo $row_emprecord['isss']; ?></td>
    <td><?php echo $row_emprecord['dbcontent']; ?></td>
    <td><?php echo $row_emprecord['dbstatus']; ?></div></td>
    <td><?php echo $row_emprecord['operational']; ?></div></td>
    <td><?php echo $row_emprecord['updated']; ?></div></td>
    <td><?php echo $row_emprecord['dbstorage']; ?></div></td>
    <td><table>
	<tr>
	    <td><a href="dbupdate.php?dbid=<?php echo $row_emprecord['dbid']; ?>"  rel="facebox">Update</a></td>
	    <td><a href="dbdelete.php?dbid=<?php echo $row_emprecord['dbid']; ?>" onclick="return confirm('Continue Delete?')">Delete</a></td>
	</tr></table>
    </td>
  </tr>
  <?php } while ($row_emprecord = mysql_fetch_assoc($emprecord)); ?>
</table>


<!-------->

<div id="footer">
  <div id="left_footer">
    <p>&nbsp;</p>
  </div>
    <div id="right_footer">


    </div>
</div>
</body>
</html>
