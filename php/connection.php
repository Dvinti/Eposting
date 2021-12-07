<?php


    date_default_timezone_set('America/Los_Angeles');
    error_reporting(E_ALL);
    ini_set("log_errors",1);
    ini_set("display_errors",1);

    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }

    function get_connection() {
        static $connection;

        if (!isset($connection)) {
		$connection = mysqli_connect('localhost','eposting','gnitsope3420','eposting')or die(mysqli_connect_error());
        }
        if ($connection === false) {
            echo "Unable to connect to database<br/>";
            echo mysqli_connect_error();
        }
        return $connection;
    }
?>
