// Put this code in first line of web page. 
<?php 
session_start();
session_destroy();
// Jump to login page
header('Location: index.php');
?>
