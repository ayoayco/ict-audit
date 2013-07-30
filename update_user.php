<?php require_once('forms/Connections/auditdata.php');


	session_start();
	if(! isset( $_SESSION['myusername'] ) ){
		header("location:notloggedin.php");
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

?>

<?php
	//('username', 'password', 'campus_unit', 'office', 'name', 'usertype')
	$sql = sprintf("INSERT INTO users VALUES (%s, %s, %s, %s, %s, 'user')",
			GetSQLValueString($_POST['newusername'], "text"),
			GetSQLValueString(md5($_POST['newpassword']), "text"),
			GetSQLValueString($_POST['newcampus'], "text"),
			GetSQLValueString($_POST['newoffice'], "text"),
			GetSQLValueString($_POST['newname'], "text"));
	//echo $sql;
	mysql_select_db($database_auditdata, $auditdata);
	$Result1 = mysql_query($sql, $auditdata) or die(mysql_error());
		header("location:admin.php");
?>
