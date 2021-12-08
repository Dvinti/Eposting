<html>
<body>

<h1>Employee's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<input type="button" onclick="location.href='Employee.php';" value="Back"/>
<br><br>

<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'] )) {

	echo "Welcome ". $_SESSION["Fname"];
	echo " ". $_SESSION["Lname"];
	echo "<br> UserID: ". $_SESSION["UserID"];
	echo "<br> DOB: ". $_SESSION["DOB"];
	echo "<br> SSN: ". $_SESSION["SSN"];
	echo "<br> Address: ". $_SESSION["address"];
	echo "<br> City: ". $_SESSION["city"];
	echo "<br> State: ". $_SESSION["state"];
	echo "<br> Email: ". $_SESSION["email"];

	echo "<br> Username: ". $_SESSION["username"];
	echo "<br> password: ". $_SESSION["password"];


}
else {
	header("Location: loginEmployee.php");
}

?>
 
</body>
</html>

