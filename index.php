<!DOCTYPE html>
<?php require_once("asset.php"); ?>
<?php

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Drinks</h1>
    </header>
    <nav>
        <a href="index.php">Home</a>
        <a href="about.php">About</a>
        <div class="fill"></div>
        <button popovertarget="login">Login</button>
    </nav>
    <main>
        <dialog id="login" popover>
            <form action="_login.php" method="POST">
                <input type="text" name="user" placeholder="Username" required>
                <input type="password" name="pass" placeholder="Password" required>
                <input type="submit" name="btn_login" value="Log in">
            </form>
        </dialog>
    </main>
    <footer>
        &copy;alice 2026
    </footer>
</body>
</html>