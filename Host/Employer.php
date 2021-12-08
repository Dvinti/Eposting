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
	echo "<br> UserID: ". $_SESSION["UserID"];

	echo "<br><br>";

	$Mariadb = get_connection();

	$myjobs = $Mariadb->prepare("SELECT * FROM job_listing WHERE employerUserID=?");
	if (!$myjobs) {
		echo "Error1 getting result: " , mysqli_error($Mariadb);
		die();
	}
	$myjobs->bind_param('i',$_SESSION["UserID"]);
	$myjobs->execute();
	mysqli_stmt_bind_result($myjobs,$job_employerUserID,$job_ID,$job_name,$job_jobtypeID,$job_description);

	$job_count = 0;

	while ($myjobs->fetch()) {
		if($job_count == 0) {

			echo "<h4>All your Job Postings</h4> ";
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

	}else {
		echo "No jobs Posted";
	}
	$myjobs->close();




}
else {
	header("Location: loginEmployer.php");
}

?>

</body>
</html>

