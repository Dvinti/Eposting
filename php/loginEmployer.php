<html>
<head>
<title> Employer account registration</title>
</head>
<body>
	<input type="button" onclick="location.href='index.php';" value="Back"/>
	<p>Log in as Employer: </p><br/>
	<form action = "loginEmployer.php" method="post">
	Username: <input type ="text" name="param_username" required><br/>
	Password: <input type ="password" name ="param_password" required><br/>
	<input type = "submit" name = "Login" value ="Login">
	</form>

	<?php

	require_once "connection.php";
	
	if (isset($_SESSION["error"])) {
		echo $_SESSION["error"];
		unset($_SESSION["error"]);
		die();
	}

	if (isset($_POST['Login'])) {
		unset($_POST['Login']);
		$Mariadb = get_connection();

		$username = $_POST['param_username'];
		$password = $_POST['param_password'];

		if (strlen($username) == 0 || strlen($password) == 0) {
			$_SESSION["error"] = "Username and/or password cannot be empty!";
			header("Location: loginEmployer.php");
		}
	
		$validation = $Mariadb->prepare("SELECT * FROM employer WHERE username=?");
		if (!$validation) {
			echo "Error getting result: " , mysqli_error($Mariadb);
			die();
		}

		$validation->bind_param('s',$username);
		if ($validation->execute()) {
			if (mysqli_stmt_bind_result($validation, $res_id,$res_company,$res_address,
				$res_city,$res_state,$res_email,$res_user, $res_password)) {

				$result_count = 0;

				while ($validation->fetch()) {
					$result_count++;
				}

				if ($result_count == 0) {
					$_SESSION["error"] = "Error: username and/or password combination was not found ";
					header("Location: loginEmployer.php");
				}
				else {

					$isGood = password_verify($password, $res_password);

					if (!$isGood) {
						$_SESSION["UserID"] = $res_id;
						$_SESSION["username"] = $res_user;
						$_SESSION["company"] = $res_company;
						$_SESSION["param_password"] = $password;
						$_SESSION["password"] = $res_password;;
						header("Location: Employer.php");
					}
					else {
						$_SESSION["error"] = "Error: the username and/or password combination was not found";
						header("Location: loginEmployer.php");
					}
				}
				
			}
			else {
				echo "Error getting result: " . mysqli_error($Mariadb);
				die();
			}
		}
		else {
			echo "Error getting result: " . mysqli_error($Mariadb);
			die();
		}
	}

?>

</body>
</html>
