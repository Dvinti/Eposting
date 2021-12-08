<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Posting</title>
    <link rel="icon" href="images/icon.png">
    <link rel="stylesheet" href="Profile.css">
</head>
<body>
    <header>
        <div class="nav-bar">
            <a class="EPostingLogo" href="jsAccountHome.htm">
                <img src="../images/icon.png" alt="images/icon.png">
            </a>
            <a href="jsAccountHome.php">Home</a>
            <a href="../jsAccountJobs.htm">Jobs</a>
            <a href="../jsAccountResume.htm">Resume</a>
            <form action="logout.php">
                <input type="submit" value="Log out" />
            </form>
        </div>
    </header>
    <main> 
        <div>
            <div class="Profile">
                <div class="welcome">
                    <?php include 'Employee.php';?><br><br>
                </div>
                <div class="info">
                    <?php include 'employeeProfile.php';?>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <ul>
            <li><a href="UserAgreement.htm">User Agreement</a></li>
            <li><a href="PrivacyPolicy.htm">Privacy Policy</a></li>
            <li><a href="CommunityGuidelines">Community Guidelines</a></li>
            <li><a href="CookiePolicy.htm">Cookie Policy</a></li>
            <li><a href="CopyrightPolicy.htm">Copyright Policy</a></li>
        </ul>
        <img class="f-logo" src="images/logo-nobg.png" alt="">
        <p>© 2021</p>
    </footer>
</body>
</html>