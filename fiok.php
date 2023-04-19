<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css">
    <link rel="stylesheet" href="css/fiok.css">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">
    <title> <?php session_start(); echo $_SESSION["username"]?> ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>
<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="img/logo.png" alt="FAKUTYA">
                
                <a class="nav-btn" href="index.php">Főoldal</a>
                <a class="nav-btn" href="allatok.php" >Állataink</a>
                <a class="nav-btn " href="./index.php#elerhetoseg">Elérhetőségek</a>
                <!-- nem oldal hanem dropdown -->
                <a class="nav-btn" href="allat_elhelyezes.php">Örökbeadás</a>
                <a class="nav-btn" href="user_system/logout.php">Kijelentkezés</a>

                
            </nav>
        </div>

        <div class="main" style="background-color: #f6fcf6">

        <?php
        $html = ''
        .'<h1 style="text-align: center;">'.$_SESSION["username"].'</h1>'
        .'<hr>'
        .'<h2>Örökbefogadott állataid:</h2>'
        .$_SESSION["id"];


        echo $html;
        ?>


        </div>

        <div class="footer">
        © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="./adatkezelesi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>
    </div>
    
</body>
</html>