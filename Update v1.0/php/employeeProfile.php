<html>
<body>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'] )) {

	echo $_SESSION["Fname"]." ".$_SESSION["Lname"];
	$DOB = $_SESSION["DOB"];
	echo "<br> DOB: ". $DOB;
	echo "<br> Address: ". $_SESSION["address"];
	echo "<br> City: ". $_SESSION["city"];
	echo "<br> State: ". $_SESSION["state"];
	echo "<br> Email: ". $_SESSION["email"];
}
else {
	header("Location: loginEmployee.php");
}

?>
 
</body>
</html>

