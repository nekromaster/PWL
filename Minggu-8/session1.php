<?php
session_start();
if (isset($_POST['Login'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    //pemeriksaan login
    if ($user == "achmatim" && $pass = "123") {
        //menciptakan session
        $_SESSION['login'] = $user;
        // ke halaman pemeriksaan session
        echo "<h1>Berhasil LOGIN</h1>";
        echo "<h2>Klik <a href='session02.php'>di sini
(session02.php)</a> menuju halaman pemeriksaan session";
    }
} else {
?>
    <html>

    <head>
        <title>Login Here</title>
    </head>

    <body>
        <form action="" method="post">
            <h2>Login Here</h2>
            Username : <input type="text" name="user"><br>
            Password : <input type="password" name="pass"><br>
            <input type="submit" name="Login" value="Log In">
        </form>
    </body>

    </html><? } ?>
