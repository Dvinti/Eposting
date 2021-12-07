<html>
<body>

<h1>Employee's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'] )) {
	echo "Welcome, ". $_SESSION["Fname"];
	echo " ". $_SESSION["Lname"];
	echo "<br> Username: ". $_SESSION["username"];
	echo "<br> inPassword: ". $_SESSION["param_password"];
	echo "<br> Database_password: ". $_SESSION["password"];
}
else {
	header("Location: loginEmployee.php");
}

?>
 
</body>
</html>

