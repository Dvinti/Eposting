<html>
<body>

<h1>Employer's page</h1>

<form action="logout.php">
    <input type="submit" value="Log out" />
</form>

<input type="button" onclick="location.href='Employee.php';" value="Back"/>
<br> <br>



<?php

require_once "connection.php";

if (isset($_SESSION['error'])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
}
if (isset($_SESSION['UserID'])) {

	echo "<br><br>";

	$Mariadb = get_connection();

	$myresume = $Mariadb->prepare("SELECT * FROM ShortResume WHERE UserID=?");
	if (!$myresume) {
		echo "Error1 getting result: " , mysqli_error($Mariadb);
		die();
	}
	$myresume->bind_param('i',$_SESSION["UserID"]);
	$myresume->execute();
	mysqli_stmt_bind_result($myresume,$resume_UserID,$resume_Fname,$resume_Lname,$resume_DOB,$resume_email,$resume_skill,$resume_exp_years);

	$resume_count = 0;

	while ($myresume->fetch()) {
		if($resume_count == 0) {

			echo "<h4>Resumes</h4> ";
			echo '<table>';
			echo '<tr><th>Fname</th><th>Lname</th><th>DOB</th><th>Email</th><th>Skill</th><th>Exp_years</th>';

			echo '</tr>';

		}
		echo '<tr>';
		echo '<td>&emsp;' . $resume_Fname . '</td>';
		echo '<td>&emsp;' . $resume_Lname . '</td>';
		echo '<td>&emsp;' . $resume_DOB . '</td>';
		echo '<td>&emsp;' . $resume_email . '</td>';
		echo '<td>&emsp;' . $resume_skill . '</td>';
		echo '<td>&emsp;&emsp;' . $resume_exp_years . '</td>';

		echo '</tr>';

		$resume_count++;
	}
	if ($resume_count > 0) {
		echo '</table>';

	}else {
		echo "No Resume Posted";
	}
	$myresume->close();




}
else {
	header("Location: loginEmployer.php");
}

?>

</body>
</html>

