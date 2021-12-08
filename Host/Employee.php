<html>
<body>

<h1>Employee's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<input type="button" onclick="location.href='employeeProfile.php';" value="Profile"/>
<br>
<br>
<input type="button" onclick="location.href='showResume.php';" value="Resume"/>
<br>


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

$Mariadb = get_connection();

$alljobs = $Mariadb->prepare("SELECT * FROM job_listing");
$alljobs->execute();
mysqli_stmt_bind_result($alljobs,$job_employerUserID,$job_ID,$job_name,$job_jobtypeID,$job_description);

$job_count = 0;

while ($alljobs->fetch()) {
	if($job_count == 0) {

		echo '<h3>All Jobs Available</h3>';
		echo '<table>';
		echo '<tr><th>Job Name</th><th>Job typeID</th><th>Description</th>';

		echo '</tr>';

	}
	echo '<tr>';
	echo '<td>' . $job_name . '</td>';
	echo '<td>' . $job_jobtypeID . '</td>';
	echo '<td>' . $job_description . '</td>';

	echo '</tr>';

	$job_count++;
}
if ($job_count > 0) {
	echo '</table>';
}
$alljobs->close();

?>
 
</body>
</html>

