<html>
<body>

<h1>Employer's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<input type="button" onclick="location.href='Employer.php';" value="Back"/>
<br> <br>




<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'])) {
	echo "Welcome ". $_SESSION["company"];
	echo "<br> UserID: ". $_SESSION["UserID"];
	echo "<br> address: ". $_SESSION["address"];
	echo "<br> City: ". $_SESSION["city"];
	echo "<br> State: ". $_SESSION["state"];
	echo "<br> email: ". $_SESSION["email"];
	echo "<br> username: ". $_SESSION["username"];
	echo "<br> password: ". $_SESSION["password"];

}
else {
	header("Location: loginEmployer.php");
}

?>

</body>
</html>

