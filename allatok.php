<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="css/allatok.css?v=<?php echo time(); ?>">
    <title>Fakutya - Kutyafa Nonprofit Civil Összefogás</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="img/logo.png" alt="FAKUTYA">
                
                <a class="nav-btn" href="index.html">Főoldal</a>
                <a class="nav-btn active" href="allatok.php" >Állataink</a>
                <a class="nav-btn" href="">Menhely</a><!-- nem oldal hanem dropdown -->
                
                <a class="nav-btn" href="">Elérhetőségek</a><!-- megse lesz oldal hanem popup -->
                
            </nav>
        </div>

        <div class="main">
            <div class="allatok-container">
                <div class="allatok-search">
                    <div class="search-wrapper">
                        <form action="">
                            <input type="text" name="nev_search" id="nev_search" placeholder="PL.: Zola" autofocus>
                            <input list="fajtak" name="faj_search" id="faj_search" placeholder="Német juhász">
                            <div class="ivar_search">
                                <input value="kan" type="radio" name="ivar_search" id="kan_search">
                                <label for="kan_search">Kan</label>
                            </div>
                            <div class="ivar_search">
                                <input value="szuka" type="radio" name="ivar_search" id="szuka_search">
                                <label for="szuka_search">Szuka</label>
                            </div>
                            
                            <datalist id="fajtak">
                                <?php
                                $db = new mysqli("localhost", "root", "", "fakutya");
                                $tipusok = $db->query("SELECT DISTINCT tipus FROM `allat`");
                                $db_amount = $db->query("SELECT COUNT(distinct TIPUS) FROM `allat`;");
                                $n = $db_amount->fetch_row()[0];
                                for($i = 0; $i < $n; $i++){
                                    $tipus = $tipusok -> fetch_row();
                                    echo "<option value=\"$tipus[0]\">";
                                }
                                ?>
                            </datalist>

                            <input class="btn" style="border: none;" type="submit" value="Szűrés">
                        </form>
                    </div>
                </div>
                <div class="allatok-grid">
                    <div class="wrapper">
                        <?php
                            $nev_search = empty($_GET['nev_search']) ? "" : $_GET['nev_search'];
                            $faj_search = empty($_GET['faj_search']) ? "" : $_GET['faj_search'];
                            $ivar_search = empty($_GET['ivar_search']) ? "" : $_GET['ivar_search'];


                            $query = "";
                            $query .= "FROM `allat` WHERE nev LIKE \"%$nev_search%\""
                            ."AND tipus LIKE \"%$faj_search%\""
                            ."AND ivar LIKE \"%$ivar_search%\";";



                            $db = new mysqli("localhost", "root", "", "fakutya");
                            $db_amount = $db->query("SELECT COUNT(*) $query");
                            $result = $db->query("SELECT * $query");
                            

                            $html = '';
                            $totalItemPerLine = 4;
                            $totalItem = $db_amount->fetch_row()[0];
                            
                            if($totalItem > 0){
                                for($i = 0; $i < $totalItem; $i++)
                                {
                                    $row = $result -> fetch_row();

                                    $allat_id = $row[0];
                                    $nev = $row[1];
                                    $added_at = substr($row[2], 0, 10);
                                    $IS_QUARANTINED = $row[3];
                                    $IS_BEFOGADHATO = $row[4];
                                    $IS_IVARTALAN = $row[5];
                                    $ivar = $row[6];
                                    $kor = $row[7];
                                    $suly = $row[8];
                                    $fog_allapot = $row[9];
                                    $tipus = $row[10];
                                    $img_src = $row[11];



                                    if($i % $totalItemPerLine == 0)
                                    {
                                        $html .= '<div class="row">'; // OPEN ROW
                                    }
                                
                                    $html .= '<div class="card">'
                                    .'<div class="img-wrapper">'
                                    .'<a href="/allat_info.php?id='.$allat_id.'">'
                                    .'<img class="thumbnail" src="'.$img_src.'"></a></div><br>'
                                    .'<h2 class="allat-nev">'.$nev.'</h2>'
                                    // .$tipus."<br>"
                                    // .$added_at."<br>"
                                    .'<p class="allat-info"><img class="ikon" src="../img/kor.svg">  '.$kor."</p>"
                                    .'<p class="allat-info"><img class="ikon" src="../img/ivar.svg">  '.$ivar."</p>"
                                    // .$suly."kg"
                                    .'<a class="btn" href="/allat_info.php?id='.$allat_id.'">'
                                    .'További részletek <span class="nyil-ikon"> </span></a>'
                                    .'</div>';
                                
                                    if($i % $totalItemPerLine == ($totalItemPerLine-1) || $i == ($totalItem-1))
                                    {
                                        $html .= '</div>'; // CLOSE ROW
                                    }
                                }   
                            } else {
                                $html .= '<h1 style="padding:5pt;">Nincs találat, kérjük, próbáld a keresést más feltételekkel.</h1>';
                            }
                            $db->close();
                            echo $html;
                        ?>
                    </div>        
                </div>
            </div>
            
                
        </div>
        <div class="footer">
        © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="/adatkezelezi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>

    </div>

</body>

</html>