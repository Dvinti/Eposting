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
	echo "<br><br>";
	echo "<h4>All your Job Postings</h4> ";

	$alljobs = $Mariadb->prepare("SELECT * FROM job_listings WHERE UserID =?");
	if (!$alljobs) {
		echo "Error1 getting result: ", mysqli_error($Mariadb);
		die();
	}
	$alljobs

}
else {
	header("Location: loginEmployer.php");
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
<!-- Post job

<h4>Post a job:</h4>
<form action = "Employer.php" method="post">
employerUserID: <input type ="text" name="employerUserID" required><br/>
ID:  <input type ="text" name="ID" required><br/>
Name:  <input type ="text" name="Name" required><br/>
JobtypeID:  <input type ="text" name="JobtypeID" required><br/>
description:  <input type ="text" name="description" required><br/>
<input type = "submit" name = "Post Job" value ="Post">
</form>

-->


</body>
</html>

