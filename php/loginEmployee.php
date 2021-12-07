<html>
<head>
<title>Eposting </title>
</head>
<body>
	<input type="button" onclick="location.href='index.php';" value="Back"/>
	<p>Log in as Employee: </p><br/>
	<form action = "loginEmployee.php" method="post">
	Username: <input type ="text" name="username" required><br/>
	Password: <input type ="password" name ="password" required><br/>
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

	$username = $_POST['username'];
	$password = $_POST['password'];

	if (strlen($username) == 0 || strlen($password) == 0) {
		$_SESSION["error"] = "Username and/or password cannot be empty!";
		header("Location: loginEmployee.php");
	}

	$validation = $Mariadb->prepare("SELECT * FROM employee WHERE username=?");
	if (!$validation) {
		echo "Error getting result: " , mysqli_error($Mariadb);
		die();
	}
	$validation->bind_param('s',$username);
	if ($validation->execute()) {
		if (mysqli_stmt_bind_result($validation, $res_id,$res_fname,$res_lname,$res_DOB,$res_SSN,$res_address,$res_city,$res_state,$res_email,$res_user,$res_password)) {

			$result_count = 0;

			while ($validation->fetch()) {
				$result_count++;
			}

			if ($result_count == 0) {
				$_SESSION["error"] = "Error1: username and/or password combination was not found ";
				header("Location: loginEmployee.php");
			}
			else {


				$isGood = password_verify($password,$res_password );

				if ($isGood) {
					$_SESSION["UserID"] = $res_id;
					$_SESSION["username"] = $res_user;
					$_SESSION["Fname"] = $res_fname;
					$_SESSION["Lname"] = $res_lname;
					$_SESSION["param_password"] = $password;
					$_SESSION["password"] = $res_password;

					header("Location: Employee.php");
				}
				else {
					$hash = password_hash($res_password, PASSWORD_DEFAULT);
					$isGood = password_verify($password, $hash);

					if ($isGood) {
						$_SESSION["UserID"] = $res_id;
						$_SESSION["username"] = $res_user;
						$_SESSION["Fname"] = $res_fname;
						$_SESSION["Lname"] = $res_lname;
						$_SESSION["param_password"] = $password;
						$_SESSION["password"] = $res_password;

						header("Location: Employee.php");

					} else {
						$_SESSION["error"] = "Error2: the username and/or password combination was not found";
						header("Location: loginEmployee.php");
					}
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
