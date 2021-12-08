<html>
<head>
<title> Employer's Post Job </title>
</head>
<body>

	<input type="button" onclick="location.href='Employer.php';" value="Back"/>
	<p>Create a new Job posting: </p><br/>
	<form action = "postJob.php" method="post">
	ID: <input type = "text" name= "param_ID" required><br/>
	Name: <input type = "text" name= "param_name" required><br/>
	JobtypeID: <input type ="text" name="param_jobtypeID" required><br/>
	Description: <textarea   type ="text" name ="param_description" maxlength="500"></textarea><br/>
	<input type = "submit" name = "Register" value ="Register">
	</form>

<?php

require_once "connection.php";

if (isset($_SESSION["error"])) {
	echo $_SESSION["error"];
	unset($_SESSION["error"]);
	die();
}

 if (isset($_SESSION['UserID'])) {
	if (isset($_POST['Register'])) {
		unset($_POST['Register']);


		$Mariadb = get_connection();

		$ID = $_POST['param_ID'];
//		$employerUserID = $_POST['param_employerUserID'];
		$name = $_POST['param_name'];
		$jobtypeID = $_POST['param_jobtypeID'];
		$description = $_POST['param_description'];


		$validation = $Mariadb->prepare("SELECT * FROM job_listing WHERE ID=?");

		if (!$validation) {
			echo "Error1 getting result: " , mysqli_error($Mariadb);
			die();
		}
		$validation->bind_param('i',$ID);
		if ($validation->execute()) {
			if (mysqli_stmt_bind_result($validation,$job_ID, $job_employerUserID,$job_name,$job_jobtypeID,$job_description)) {

				$job_count = 0;

				while ($validation->fetch()) {
					$job_count++;
				}
				if ($job_count > 0) {
					$_SESSION["error"] = "Error: job " . $ID . "already exists";
					header("Location: postJob.php");
				}

				else{
					echo "Adding Job to Job Listing";

					$postjobs= $Mariadb->prepare("CALL newJoblist(?,?,?,?,?)");
					$postjobs->bind_param('iisis',$ID, $_SESSION['UserID'], $name,$jobtypeID,$description );

					if ($postjobs->execute()) {
						echo "Job Posted";
						header("Location Employer.php");
					}else {
						echo "Posting fail: " . mysqli_error($Mariadb);
						die();
					}
				}
			}
				else {
					echo "Error getting job: " . mysqli_error($Mariadb);
					die();

				}
			}
			else {
				echo "Error getting job: " . mysqli_error($Mariadb);
				die();

			}
	}

}else {
	header("Location: loginEmployer.php");
}


?>

</body>
</html>
