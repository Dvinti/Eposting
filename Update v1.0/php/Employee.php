<html>
<body>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'] )) {
	echo "Welcome, ". $_SESSION["Fname"];
	echo " ". $_SESSION["Lname"];
}
else {
	header("Location: loginEmployee.php");
}

?>
 
</body>
</html>

