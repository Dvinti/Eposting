<html>
<head>
<title> Employee account registration</title>
</head>
<body>
	<input type="button" onclick="location.href='index.php';" value="Back"/>
	<p>Create a new Employee account: </p><br/>
	<form action = "registerEmployee.php" method="post">
	Fname: <input type = "text" name= "param_fname" required><br/>
	Lname: <input type = "text" name= "param_lname" required><br/>
	DOB: <input type = "date" name= "param_DOB" required><br/>
	SSN: <input type = "text" name= "param_SSN" required><br/>
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

		$fname = $_POST['param_fname'];
		$lname = $_POST['param_lname'];
		$DOB = $_POST['param_DOB'];
		$SSN = $_POST['param_SSN'];
		$address = $_POST['param_address'];
		$city = $_POST['param_city'];
		$state = $_POST['param_state'];
		$email = $_POST['param_email'];
		$username = $_POST['param_username'];
		$password = $_POST['param_password'];

		if (strlen($state) > 3 ) {
			$_SESSION["error"] = "State cannot be more than 3 letters example CA ,AZ..etc";
			header("Location: registerEmployee.php");
		}
//		if (strlen($username) == 0 || strlen($password) == 0) {
//			$_SESSION["error"] = "Username and/or password cannot be empty!";
//			header("Location: registerEmployee.php");
//		}
		if (strlen($fname) == 0 || strlen($lname) == 0 ||strlen($DOB) == 0 || strlen($SSN) == 0 ||
			strlen($address) == 0 || strlen($city) == 0 || strlen($state) == 0 || strlen($email) == 0 ||
			strlen($username) == 0 || strlen($password) == 0  ) {
			$_SESSION["error"] = "Username,password,Fname,Lname,DOB,SSN,Address,City,State,Email cannot be empty!";
			header("Location: registerEmployee.php");
		}
		$validation = $Mariadb->prepare("SELECT * FROM employee WHERE username=?");
		if (!$validation) {
			echo "Error getting result: " , mysqli_error($Mariadb);
			die();
		}

		$validation->bind_param('s',$username);
		if ($validation->execute()) {
			if (mysqli_stmt_bind_result($validation, $res_id,$res_fname,$res_lname,$res_DOB,$res_SSN,$res_address,
				$res_city,$res_state,$res_email,$res_user, $res_password)) {

				$result_count = 0;

				while ($validation->fetch()) {
					$result_count++;
				}

				if ($result_count > 0) {
					$_SESSION["error"] = "Error: username" . $username . " already registerd";
					header("Location: registerEmployee.php");
				}
				else {
					echo "Registering Employee";
					$hash = password_hash($password, PASSWORD_DEFAULT);
					$statement = $Mariadb->prepare("CALL RegisterEmployee(?,?,?,?,?,?,?,?,?,?)");
					$statement->bind_param('ssssssssss',$fname,$lname,$DOB,$SSN,$address,$city,$state,$email,$username,$hash);
					if ($statement->execute()) {
						echo "Registered Employee";
						header("Location: loginEmployee.php");
					}else {
						echo "Registration of employee fail: " . mysqli_error($Mariadb);
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
