<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css">
    <link rel="stylesheet" href="css/allat_info.css">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">

</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="img/logo.png" alt="FAKUTYA">

                <a class="nav-btn" href="index.php">Főoldal</a>
                <a class="nav-btn active" href="allatok.php">Állataink</a>
                <a class="nav-btn" href="">Elérhetőségek</a>
                <!-- nem oldal hanem dropdown -->

                <a class="nav-btn" href="allat_elhelyezes.php">Örökbeadás</a>
                <!-- megse lesz oldal hanem popup -->
            </nav>
        </div>

        <div class="main">
            <div class="container">
                <div class="allat-infok">
                <?php
                    require_once "config.php";

                    $db_amount = $link->query("SELECT COUNT(*) FROM allat");
                    $totalItem = $db_amount->fetch_row()[0];
                    $url_allat_id = $_GET['id'];

                    if ($url_allat_id <= $totalItem) {
                        $allat = $link->query("SELECT * FROM `allat` WHERE `allat_id` = \"$url_allat_id\"");
                        $fog_lekerdezes = $link->query("SELECT fog_dict.JELENTES from fog_dict INNER JOIN allat on allat.FOG_ALLAPOT = fog_dict.FOG_ALLAPOT WHERE allat.ALLAT_ID = \"$url_allat_id\";");

                        
                        $mezo = $allat -> fetch_row();
                        $fog_allapot = $fog_lekerdezes -> fetch_row()[0];

                        

                        $allat_id = $mezo[0];
                        $nev = $mezo[1];
                        $added_at = substr($mezo[2], 0, 10);
                        $IS_QUARANTINED = $mezo[3];
                        $IS_BEFOGADHATO = $mezo[4];
                        $IS_IVARTALAN = $mezo[5];
                        $ivaros = '';
                        if ($IS_IVARTALAN == 1) {
                            $ivaros = "ivartalanított";
                        }else{
                            $ivaros = "nincs ivartalanítva";
                        }
                        $ivar = $mezo[7];
                        $kor = $mezo[8];
                        $suly = $mezo[9];
                        $faj = $mezo[11];
                        $tipus = $mezo[12];
                        $img_src = $mezo[13];
                        $allapot = $mezo[14];
                        $tulajdonsagok = $mezo[15];
                        $comment = $mezo[16];

                        $email = $mezo[17];
                        $telefon = $mezo[18];

                        $html = '';
                        $html .= '<div class="kep">'
                        .'<img src="'.$img_src.'" alt="'.$nev.'">'
                        .'</div>'
                        .'<div class="info">'
                        .'<h1>'.$nev.'</h1>'
                        .'<p class="allat-info">'.$faj.': '.$tipus."</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/kor.svg">  '.$kor." éves</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/ivar.svg">  '.$ivar."</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/fogazat.svg">  '.$fog_allapot."</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/ivaros.svg">  '.$ivaros."</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/suly.svg">  '.$suly." kg</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/email.svg">  '.$email."</p>"
                        .'<p class="allat-info"><img class="ikon" src="../img/telefon.svg">  '.$telefon."</p>"


                        .'</div>';
                        
                        echo $html;
                        echo '</div>
                        <div class="orokbefogadas">
                            <h1>Állat tulajdonságai</h1><br>
                            <p> '.$tulajdonsagok.' </p> <br>
                            <h1>Állat állapota</h1><br>
                            <p> '.$allapot.' </p> <br>
                            <h1>Egyéb információk</h1><br>
                            <p> '.$comment.' </p> <br>

                            <p style="background-color: #ff111122; border-radius:5pt;"> <b> Fontos!</b> Ha megtetszettem neked, kérlek, csak abban az esetben jelentkezz örökbefogadónak, ha egy életre elköteleződnél velem kapcsolatban és felelős állattartó vagy, akinél a kutya nem kerti dísz, hanem családtag. Vállalod, hogy költözésnél (akár külföldre, akár kertből lakásba, akár másik albérletbe) engem is, mint egy másik családtagodat viszel magaddal és gondoskodsz arról, hogy ha veled bármi történik, nekem akkor is legyen hol és legfőképpen biztonságban élnem.</p>
                        </div>';
                        
                    }else {
                        echo '<h1 style="padding:5pt;">Ez a kutya sajnálattal nem létezik.</h1>';
                    }

                ?>


            </div>


        </div>

        <div class="footer">
        © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="/adatkezelesi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>

    </div>

</body>
<title><?php echo $nev ?> ≫ Kutyafa Nonprofit Civil Összefogás</title>

</html>