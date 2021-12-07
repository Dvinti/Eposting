<html>
<body>

<h1>Employer's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'])) {
	echo "Welcome, companyName ". $_SESSION["company"];
	echo "<br> username: ". $_SESSION["username"];
	echo "<br> inPassword: ". $_SESSION["param_password"];
	echo "<br> database_password: ". $_SESSION["password"];
}
else {
	header("Location: loginEmployer.php");
}

?>
 
</body>
</html>

