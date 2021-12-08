<html>
<body>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'])) {
	echo "Welcome, ". $_SESSION["company"];
}
else {
	header("Location: loginEmployer.php");
}

?>
 
</body>
</html>

