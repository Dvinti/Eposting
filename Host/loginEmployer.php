<!DOCTYPE html>
<html lang="en">
    <head>
        <title>E-Posting</title>
        <link rel="icon" href="images/icon.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <link rel="stylesheet" href="login.css"/>
    </head>
<body>

        <div>
            <header>
                <a class="EPostingLogo" href="index.php">
                    <img src="images/logo header.png" alt="images/icon.png">
                </a>
            </header>
            <main>
                <div class="bg-image">
                    <div class="SignInCard">
			<h1 class="SignInTitle">Log in Employer </h1>

			<input type="button" onclick="location.href='index.php';" value="Back"/>
                        <form class="Login" method="post" action="loginEmployer.php">
                            <div class="input">
                                <p class="user-login">
                                    <label for="username">Username:</label>
                                    <input id="username" name="username" type="text" required  placeholder="Enter Username"/>
                                </p>
                            </div>
                            <div>
                                <p class="password-login">
                                    <label for="password">Password:</label>
                                    <input class="password-box" id="password" name="password" required type="password" placeholder="Enter Password"/>
                                    <i class="bi bi-eye-slash" id="visToggle"></i>
                                </p>
                                <p>
                                    <a class="pass-request" href="/passwordRequest.htm">Forgot Password?</a>
				</p>
				<input type = "submit" name = "Login" value ="Login">
                            </div>
                        </form>
                        <script src="visibility.js"></script>



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
		header("Location: loginEmployer.php");
	}

	$validation = $Mariadb->prepare("SELECT * FROM employer WHERE username=?");
	if (!$validation) {
		echo "Error getting result: " , mysqli_error($Mariadb);
		die();
	}

	$validation->bind_param('s',$username);
	if ($validation->execute()) {
		if (mysqli_stmt_bind_result($validation, $res_id,$res_company,$res_address,$res_city,$res_state,$res_email,$res_user, $res_password)) {

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

				if ($isGood) {
					$_SESSION["UserID"] = $res_id;
					$_SESSION["username"] = $res_user;
					$_SESSION["company"] = $res_company;
					$_SESSION["param_password"] = $password;
					$_SESSION["password"] = $res_password;;
					header("Location: Employer.php");
				}
				else {
					$hash = password_hash($res_password, PASSWORD_DEFAULT);
					$isGood = password_verify($password, $hash);

					if ($isGood) {
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
                    </div>
                </div>
            </main>
            <footer>
                
            </footer>
        </div>
    </body>
</html>

