<!DOCTYPE html>
<?php require_once("asset.php"); ?>
<?php
$mess="";
if(isset($_SESSION['mess'])){
    $mess=$_SESSION['mess'];
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
<details>
    <summary>
    <div><h2>Screwdriver&nbsp;&nbsp;<span><?=isAlcoholic(1)?></span></h2><h4>Vodka and orange classic</h4></div> <div class="filler"></div>  <div>Rated: <?=showRating(3.500378)?></div>   
    </summary>
    <div class="ingredients">
    Alcoholic drink<br>
    <pre>
    6 cl Vodka (Preferrably russian)
    25 cl Orange Juice
    A slice of orange peel as decoration
    </pre>
    </div>
    <div class="recipe">
    Pour the vodka in a tall glass.
    Add orange juice and ice after taste.
    Shake furiosly ten minutes.
    decorate with orange peel.</div>

</details>
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