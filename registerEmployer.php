<html>
<head>
<title> Employer account registration</title>
</head>
<body>

	<input type="button" onclick="location.href='index.php';" value="Back"/>
	<p>Create a new Employer account: </p><br/>
	<form action = "registerEmployer.php" method="post">
	CompanyName: <input type = "text" name= "param_company" required><br/>
	Address: <input type = "text" name= "param_address" required><br/>
	City: <input type = "text" name= "param_city" required><br/>
	State: <input type = "text" name= "param_state" required><br/>
	Email: <input type = "email" name= "param_email" required><br/>
	Username: <input type ="text" name="param_username" required><br/>
	Password: <input type ="password" name ="param_password" required><br/>
	<input type = "submit" name = "Register" value ="Register">
	</form>

	<?php

	require_once "connection.php";
	
	if (isset($_SESSION["error"])) {
		echo $_SESSION["error"];
		unset($_SESSION["error"]);
		die();
	}

	if (isset($_POST['Register'])) {
		unset($_POST['Register']);
		$Mariadb = get_connection();

		$company = $_POST['param_company'];
		$address = $_POST['param_address'];
		$city = $_POST['param_city'];
		$state = $_POST['param_state'];
		$email = $_POST['param_email'];
		$username = $_POST['param_username'];
		$password = $_POST['param_password'];

		if (strlen($state) > 3 ) {
			$_SESSION["error"] = "State cannot be more than 3 letters example CA ,AZ..etc";
			header("Location: registerEmployer.php");
		}
//		if (strlen($username) == 0 || strlen($password) == 0) {
//			$_SESSION["error"] = "Username and/or password cannot be empty!";
//			header("Location: registerEmployer.php");
//		}
		if (strlen($company) == 0 || strlen($address) == 0 || strlen($city) == 0 || strlen($state) == 0 ||
		   	strlen($email) == 0 || strlen($username) == 0 || strlen($password) == 0  ) {
			$_SESSION["error"] = "Username,password,CompanyName,Address,City,State,Email cannot be empty!";
			header("Location: registerEmployer.php");
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

				if ($result_count > 0) {
					$_SESSION["error"] = "Error: username" . $username . " already registerd";
					header("Location: registerEmployer.php");
				}
				else {
					echo "Registering Employer";
					$hash = password_hash($password, PASSWORD_DEFAULT);
					$statement = $Mariadb->prepare("CALL RegisterEmployer(?,?,?,?,?,?,?)");
					$statement->bind_param('sssssss',$company,$address,$city,$state,$email,$username,$hash);
					if ($statement->execute()) {
						echo "Registered Employer";
						header("Location: loginEmployer.php");
					}else {
						echo "Registration of employer fail: " . mysqli_error($Mariadb);
						die();
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
