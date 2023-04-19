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
                <a class="nav-btn active" href="user_system/logout.php">Kijelentkezés</a>

                
            </nav>
        </div>

        <div class="main" style="background-color: #fff; height: 100%;">
            <h1><?php echo $_SESSION["username"];?></h1>
            <h2>Örökbefogadott állataid:</h2>
            <div class="wrapper">
            <?php
            require_once("config.php");
            $allatok = $link->query('SELECT * FROM allat INNER JOIN befogadott_allatok ON befogadott_allatok.allat_id = allat.allat_id WHERE befogadott_allatok.BEFOGADO_ID = '.$_SESSION["id"]);
            $db = $link->query('SELECT count(*) FROM allat INNER JOIN befogadott_allatok ON befogadott_allatok.allat_id = allat.allat_id WHERE befogadott_allatok.BEFOGADO_ID = '.$_SESSION["id"]);
            $db = $db -> fetch_row()[0];


            $html = '';

            $totalItemPerLine = 4;
            for($i = 0; $i < $db; $i++){
                $row = $allatok -> fetch_row();

                $allat_id = $row[0];
                $nev = $row[1];
                $ivar = $row[7];
                $kor = $row[8];
                $img_src = $row[13];

                if($i % $totalItemPerLine == 0)
                {
                    $html .= '<div class="row">'; // OPEN ROW
                }
            
                $html .= '<div style="width: '. 100 / $totalItemPerLine. '%" class="card">'
                .'<div class="img-wrapper">'
                .'<a href="/allat_info.php?id='.$allat_id.'">'
                .'<img class="thumbnail" src="'.$img_src.'"></a></div><br>'
                .'<h2 class="allat-nev">'.$nev.'</h2>'
                .'<p class="allat-info"><img class="ikon" src="../img/kor.svg">  '.$kor."</p>"
                .'<p class="allat-info"><img class="ikon" src="../img/ivar.svg">  '.$ivar."</p>"
                .'<a class="btn" href="/allat_info.php?id='.$allat_id.'">'
                .'További részletek <span class="nyil-ikon"> </span></a>'
                .'<a class="btn" href="/visszakuldes.php?id='.$allat_id.'">'
                .'Állat visszaküldése<span class="nyil-ikon"> </span></a>'
                .'</div>';
            
                if($i % $totalItemPerLine == ($totalItemPerLine-1) || $i == ($db-1))
                {
                    $html .= '</div>'; // CLOSE ROW
                }
            }
            echo $html;
            ?>
            </div>
            <h2>Te általad feltöltött állatok:</h2>
            <div class="wrapper">
            <?php
            require_once("config.php");
            $allatok = $link->query('SELECT * FROM allat WHERE  user_id = '.$_SESSION["id"]);
            $db = $link->query('SELECT count(*) FROM allat WHERE  user_id = '.$_SESSION["id"]);
            $db = $db -> fetch_row()[0];

            $html = '';

            $totalItemPerLine = 4;
            for($i = 0; $i < $db; $i++){
                $row = $allatok -> fetch_row();

                $allat_id = $row[0];
                $nev = $row[1];
                $ivar = $row[7];
                $kor = $row[8];
                $img_src = $row[13];

                if($i % $totalItemPerLine == 0)
                {
                    $html .= '<div class="row">';
                }
            
                $html .= '<div style="width: '. 100 / $totalItemPerLine. '%" class="card">'
                .'<div class="img-wrapper">'
                .'<a href="/allat_info.php?id='.$allat_id.'">'
                .'<img class="thumbnail" src="'.$img_src.'"></a></div><br>'
                .'<h2 class="allat-nev">'.$nev.'</h2>'
                .'<p class="allat-info"><img class="ikon" src="../img/kor.svg">  '.$kor."</p>"
                .'<p class="allat-info"><img class="ikon" src="../img/ivar.svg">  '.$ivar."</p>"
                .'<a class="btn" href="/allat_info.php?id='.$allat_id.'">'
                .'További részletek <span class="nyil-ikon"> </span></a>'
                .'<a class="btn" href="/allat_frissitese.php?id='.$allat_id.'">'
                .'Állat frissítése <span class="nyil-ikon"> </span></a>'
                .'</div>';
            
                if($i % $totalItemPerLine == ($totalItemPerLine-1) || $i == ($db-1))
                {
                    $html .= '</div>';
                }
            }
            echo $html;
            ?>


            </div>

        </div>

        <div style="
        background-color: #f2f7f6;
        text-align: center;
        padding-top: 1rem;
        width: 100%;
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;">
        © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="./adatkezelesi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>
    </div>
    
</body>
</html>