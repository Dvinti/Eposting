<html>
<body>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'])) {
	echo $_SESSION["company"];
	echo "<br> address: ". $_SESSION["address"];
	echo "<br> City: ". $_SESSION["city"];
	echo "<br> State: ". $_SESSION["state"];
	echo "<br> email: ". $_SESSION["email"];

}
else {
	header("Location: loginEmployer.php");
}

?>

</body>
</html>

