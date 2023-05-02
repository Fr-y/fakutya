<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="/css/universal.css">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">
    <title>Hiba történt!</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="/img/logo.png" alt="FAKUTYA">

                <a class="nav-btn" href="/index.php">Főoldal</a>
                <a class="nav-btn" href="/allatok.php">Állataink</a>
                <a class="nav-btn" href="/index.php#elerhetoseg">Elérhetőségek</a>
                <a class="nav-btn" href="/allat_elhelyezes.php">Örökbeadás</a>
                <?php
                    session_start();
                    if(!isset($_SESSION["loggedin"])){
                        echo '<a class="nav-btn" href="/user_system/login.php"> Bejelentkezés</a>';
                    }
                     else {
                        echo '<a class="nav-btn" href="/fiok.php">'. $_SESSION["username"].'</a>';
                    }
                    ?>
            </nav>
        </div>
        <div class="main" style="text-align:center; background-color: #fff; font-size:20pt;">
            <h1>Ez az oldal nem létezik</h1>
        </div>
    </div>
</body>

</html>