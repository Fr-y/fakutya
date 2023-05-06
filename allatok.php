<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="/css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="/css/allatok.css?v=<?php echo time(); ?>">

    <link rel="icon" type="image/x-icon" href="/img/logo.ico">


    <script> 
        window.onload = function() {
        document.cookie = "windowHeight=" + window.innerHeight + ";";
        document.cookie = "windowWidth=" + window.innerWidth + ";";
        }

        window.onresize = function(){
        location.reload();
        }
    </script>
    
    <?php
    if(!isset($_COOKIE['windowHeight']) && !isset($_COOKIE['windowWidth'])) {
        header("Refresh:0");
        exit();
    }
    ?>

    <title>Állataink ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="/img/logo.png" alt="FAKUTYA">
                
                <a class="nav-btn" href="/index.php">Főoldal</a>
                <a class="nav-btn active" href="/allatok.php" >Állataink</a>
                <a class="nav-btn " href="./index.php#elerhetoseg">Elérhetőségek</a>
                <a class="nav-btn" href="/allat_elhelyezes.php">Örökbeadás</a>
                <?php
                    session_start();
                    if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
                        echo '<a class="nav-btn" href="/user_system/login.php"> Bejelentkezés</a>';
                    } else {
                        echo '<a class="nav-btn" href="/fiok.php">'. $_SESSION["username"].'</a>';
                    }
                    ?>
                
            </nav>
        </div>

        <div class="main">
            <div class="allatok-container">
                <div class="allatok-search">
                    <div class="search-wrapper">
                        <form action="">
                            <h2 style="display: inline-block;">Azonnal befogadható:</h2>
                            <input style="width: 25pt; height:25pt;" type="checkbox" name="befogadhato" id="befogadhato">
                            <hr>
                            <h1>Név:</h1>
                            <input type="text" name="nev_search" id="nev_search" placeholder="PL.: Zola" autofocus >
                            <hr>
                            <h1>Faj</h1>
                            <input list="fajok" name="faj_search" id="faj_search" placeholder="kutya">
                            <hr>
                            <h1>Fajtípus:</h1>
                            <input list="fajtipusok" name="tipus_search" id="tipus_search" placeholder="Német juhász">
                            <hr>
                            <div class="ivar_search">
                                <input value="kan" type="radio" name="ivar_search" id="kan_search">
                                <label for="kan_search">Kan</label>
                            </div>
                            <div class="ivar_search">
                                <input value="szuka" type="radio" name="ivar_search" id="szuka_search">
                                <label for="szuka_search">Szuka</label>
                            </div>
                            <hr>
                            <h1>Kor:</h1>
                            <?php 
                                require_once "config.php";
                                $results = $link->query("SELECT kor, COUNT(*) as total FROM `allat` GROUP BY kor");
                                $counts = array_fill(1, 5, 0);
                                while ($row = $results->fetch_assoc()) {
                                    $counts[$row['kor'] <= 5 ? 1 : ($row['kor'] <= 10 ? 2 : ($row['kor'] <= 15 ? 3 : ($row['kor'] < 20 ? 4 : ($row['kor'] >= 20 ? 5 : 5))))] += $row['total'];
                                }
                                $html = '
                                <div class="kor_search">
                                    <input value="0 and 5 " type="checkbox" id="0" name="kor_search[]"><label for="0">0 - 5 <span style="color:#66666666;">('.$counts[1].')</span> </label>
                                </div>
                                <div class="kor_search">
                                    <input value="5 and 10 " type="checkbox" id="1" name="kor_search[]"><label for="1">5 - 10 <span style="color:#66666666;">('.$counts[2].')</span> </label>
                                </div>
                                <div class="kor_search">
                                    <input value="10 and 15 " type="checkbox" id="2" name="kor_search[]"><label for="2">10 - 15 <span style="color:#66666666;">('.$counts[3].')</span> </label>
                                </div>
                                <div class="kor_search">
                                    <input value="15 and 20 " type="checkbox" id="3" name="kor_search[]"><label for="3">15 - 20 <span style="color:#66666666;">('.$counts[4].')</span> </label>
                                </div>
                                <div class="kor_search">
                                    <input value="20 and 30 " type="checkbox" id="4" name="kor_search[]"><label name="4label" for="4">> 20 <span style="color:#66666666;">('.$counts[5].')</span> </label>
                                </div>
                                <hr>';
                                echo $html;
                            ?>
                            <h1>Súly: <i>(kg)</i> </h1>
                            <?php 
                                require_once "config.php";
                                $results = $link->query("SELECT suly, COUNT(*) as total FROM `allat` GROUP BY suly");
                                $counts = array_fill(1, 5, 0);
                                while ($row = $results->fetch_assoc()) {
                                    $counts[$row['suly'] <= 5 ? 1 : ($row['suly'] <= 10 ? 2 : ($row['suly'] <= 20 ? 3 : ($row['suly'] < 30 ? 4 : ($row['suly'] >= 30 ? 5 : 5))))] += $row['total'];
                                }
                                $html = '
                                <div class="suly_search">
                                    <input value="0 and 5 " type="checkbox" id="0" name="suly_search[]"><label for="0">0 - 5 <span style="color:#66666666;">('.$counts[1].')</span> </label>
                                </div>
                                <div class="suly_search">
                                    <input value="5 and 10 " type="checkbox" id="1" name="suly_search[]"><label for="1">5 - 10 <span style="color:#66666666;">('.$counts[2].')</span> </label>
                                </div>
                                <div class="suly_search">
                                    <input value="10 and 20 " type="checkbox" id="2" name="suly_search[]"><label for="2">10 - 20 <span style="color:#66666666;">('.$counts[3].')</span> </label>
                                </div>
                                <div class="suly_search">
                                    <input value="20 and 30 " type="checkbox" id="3" name="suly_search[]"><label for="3">20 - 30 <span style="color:#66666666;">('.$counts[4].')</span> </label>
                                </div>
                                <div class="suly_search">
                                    <input value="30 and 99 " type="checkbox" id="4" name="suly_search[]"><label name="4label" for="4">> 30 <span style="color:#66666666;">('.$counts[5].')</span> </label>
                                </div>
                                <hr>';
                                echo $html;
                            ?>
                            
                            <datalist id="fajok">
                                <?php
                                require_once "config.php";
                                $tipusok = $link->query("SELECT DISTINCT faj FROM `allat`");
                                $db_amount = $link->query("SELECT COUNT(distinct faj) FROM `allat`;");
                                $n = $db_amount->fetch_row()[0];
                                for($i = 0; $i < $n; $i++){
                                    $tipus = $tipusok -> fetch_row();
                                    echo "<option value=\"$tipus[0]\">";
                                }
                                ?>
                            </datalist>
                            <datalist id="fajtipusok">
                                <?php
                                require_once "config.php";
                                $tipusok = $link->query("SELECT DISTINCT tipus FROM `allat`");
                                $db_amount = $link->query("SELECT COUNT(distinct TIPUS) FROM `allat`;");
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
                            $tipus_search = empty($_GET['tipus_search']) ? "" : $_GET['tipus_search'];
                            $ivar_search = empty($_GET['ivar_search']) ? "" : $_GET['ivar_search'];
                            $kor_search = empty($_GET['kor_search']) ? "" : $_GET['kor_search'];
                            $suly_search = empty($_GET['suly_search']) ? "" : $_GET['suly_search'];

                            if (preg_match('/^[\p{L}\p{N} ]*$/u', $nev_search) && preg_match('/^[\p{L}\p{N} ]*$/u', $faj_search) && preg_match('/^[\p{L}\p{N} ]*$/u', $tipus_search)) {
                                $query = "";
                                $query .= "FROM `allat` WHERE befogadott = 0 AND  nev LIKE \"%$nev_search%\""
                                ."AND faj LIKE \"%$faj_search%\""
                                ."AND tipus LIKE \"%$tipus_search%\""
                                ."AND ivar LIKE \"%$ivar_search%\"";
                                if (!empty($kor_search)) {
                                    for ($i=0; $i < count($kor_search); $i++) { 
                                        if ($i > 0) {
                                            $query.="OR kor BETWEEN $kor_search[$i]";
                                        }
                                        else{
                                            $query.="AND kor BETWEEN $kor_search[$i]";
                                        }
                                    }
                                }
                                if (!empty($suly_search)) {
                                    for ($i=0; $i < count($suly_search); $i++) { 
                                        if ($i > 0) {
                                            $query.="OR suly BETWEEN $suly_search[$i]";
                                        }
                                        else{
                                            $query.="AND suly BETWEEN $suly_search[$i]";
                                        }
                                    }
                                }
                                if (!empty($_GET['befogadhato'])) {
                                    if ($_GET['befogadhato'] == "on") {
                                        $query.="AND IS_BEFOGADHATO = 1";
                                    }
                                }
         

                                require_once "config.php";
                                $db_amount = $link->query("SELECT COUNT(*) $query");
                                $result = $link->query("SELECT * $query");

                                $height= $_COOKIE['windowHeight'];
                                $width= $_COOKIE['windowWidth'];
                                
                                $html = '';
                                if ($width > 640) {
                                    $num = $width / 640;
                                    $threshold = 0.76;
                                    if ($num - floor($num) >= $threshold) {
                                        $totalItemPerLine = ceil($num); 
                                    } else {
                                        $totalItemPerLine = floor($num);
                                    }
                                } else{
                                    $totalItemPerLine = 1;
                                }                            
                                
                                $totalItem = $db_amount->fetch_row()[0];
                                
                                if($totalItem > 0){
                                    for($i = 0; $i < $totalItem; $i++)
                                    {
                                        $row = $result -> fetch_row();

                                        $allat_id = $row[0];
                                        $nev = $row[1];
                                        $ivar = $row[7];
                                        $kor = $row[8];
                                        $tipus = $row[11];
                                        $img_src = $row[13];



                                        if($i % $totalItemPerLine == 0)
                                        {
                                            $html .= '<div class="row">';
                                        }
                                    
                                        $html .= '<div style="width: '. 100 / $totalItemPerLine. '%" class="card">'
                                        .'<div class="img-wrapper">'
                                        .'<a href="/allat_info.php?id='.$allat_id.'">'
                                        .'<img class="thumbnail" src="/'.$img_src.'"></a></div><br>'
                                        .'<h2 class="allat-nev">'.$nev.'</h2>'
                                        .'<p class="allat-info"><img class="ikon" src="../img/kor.svg">  '.$kor."</p>"
                                        .'<p class="allat-info"><img class="ikon" src="../img/ivar.svg">  '.$ivar."</p>"
                                        .'<a class="btn" href="/allat_info.php?id='.$allat_id.'">'
                                        .'További részletek <span class="nyil-ikon"> </span></a>';
                                        if (isset($_SESSION["is_admin"]) && $_SESSION["is_admin"]) {
                                            $html .= '<a class="btn" href="/allat_frissitese.php?id='.$allat_id.'">'
                                            .'Állat frissítése <span class="nyil-ikon"> </span></a>';
                                        }
                                        $html .='</div>';
                                    
                                        if($i % $totalItemPerLine == ($totalItemPerLine-1) || $i == ($totalItem-1))
                                        {
                                            $html .= '</div>';
                                        }
                                    }   
                                } else {
                                    $html .= '<h1 style="padding:5pt;">Nincs találat, kérjük, próbáld a keresést más feltételekkel.</h1>';
                                }
                                echo $html;
                            } else{
                                echo '<h1 style="padding:5pt;">Helytelen keresési érték. A név és a faj csak betűket tartalmazhat.</h1>';
                            }

                            
                        ?>
                    </div>        
                </div>
            </div>
            
                
        </div>
        <div class="footer">
        © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="adatkezelesi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>

    </div>

</body>

</html>