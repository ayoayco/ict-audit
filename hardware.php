<?php require_once('forms/Connections/auditdata.php');
//initialize the session


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

</head>

<body>
<div id="body-div">
  <div id="header">
	<img id="logo" class="left" src="images/up-logo.png" class="title-pic">
	<h1 class="left">eUP ICT Audit Survey</h1><div class="clear"></div>
	<div id="nav-div">
	  <ul id="nav-menu">
	    	<li><a href="admin.php">Information Systems</a></li>
	   	<li><a href="databases.php">Databases</a></li>
	    	<li><a href="hardware.php">Hardware</a></li>
	    	<li><a href="computer_centers.php">Computer Centers</a></li>
	    	<li><a href="staff.php">Staff</a></li>
	    	<!--li><a href="#upload.php">Uploaded Files</a></li-->
		<li><a href="logout.php">Log out</a></li>
	  </ul>
	</div>
  </div><div class="clear"></div>
  <div id="main">
	<h1>Workstations</h1>
	<h3>UP Los Ba&ntilde;os</h3>
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UPLB") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>

	<h3>UP Diliman</h3>
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Diliman") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	<h3>UP Baguio</h3>	
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Baguio") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	
	<h3>UP Manila</h3>
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Manila") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	
	<h3>UP Open University</h3>
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Open University") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	
	<h3>UP Visayas</h3>	
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Visayas") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	
	<h3>UP Mindanao</h3>	
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP Mindanao") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	

	<h3>UP System</h3>	
  	<table id='admin_table'>
		<tr style='text-align:center; font-weight: bold;'><td>&nbsp;</td><td>Item</td><td style="width:450x;">Deployment</td><td>Admin</td><td>Research</td><td>Teaching</td><td>Total</td><td>Recommendation</td></tr>
		<?php
			$iscount = 0;
			$sql = "select * from workstation ORDER BY wid DESC";
			$result = mysql_query($sql);
			while($rows = mysql_fetch_array($result)){
				$sql2 = "select * from users where username ='".$rows['submittedBy']."'";
				$result2 = mysql_query($sql2);
				$rows2 = mysql_fetch_array($result2);
				if($rows2['campus_unit']=="UP System") echo "<tr><td>".++$iscount."</td><td>".$rows['WorkstationItem']."</td><td>".$rows['deployment']."</td><td>".$rows['admin']."</td><td>".$rows['research']."</td><td>".$rows['teaching']."</td><td>".$rows['total']."</td><td>".$rows['recommendation']."</td></tr>";
			}
			
		?>
	</table>


	
	
	
	</div>	

  <div id="footer">
	&copy; 2012. University of the Philippines. All Rights Reserved.
  </div>
</div>
</body>
</html>
