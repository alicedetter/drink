<!DOCTYPE html>
<?php require_once("asset.php"); ?>
<?php
$mess="";
if(isset($_SESSION['mess'])){
    $mess=$_SESSION['mess'];
}else{
    $mess="";
}

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
<?php require_once("_nav.php"); ?>
    <main>
        <h1 class="message"><?=$mess;?></h1>
        <h2>About this website</h2>
        <p>Welcome to our drinks website! Here you can find information about various beverages, their ingredients, and preparation methods. You can also add your own recipes and let others see them!</p>
    </main>
<?php require_once("_footer.php"); ?>
    <dialog id="login" popover>
        <form action="_login.php" method="POST">
            <label for="user">Username</label>
            <input type="text" name="user" placeholder="Username" required>
            <label for="pass">Password</label>
            <input type="password" name="pass" placeholder="Password" required>
            <input type="submit" name="btn_login" value="Log in">
        </form>
    </dialog>
</body>
</html>