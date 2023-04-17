<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="css/allatok.css?v=<?php echo time(); ?>">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">


    <script> 

        function setCookie(cname,cvalue,exdays) {
        var d = new Date();
        d.setTime(d.getTime()+(exdays*24*60*60*1000));
        var expires = "expires="+d.toGMTString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
        }

        function window_height() {
        if (document.body) {
            winH = document.body.offsetHeight;
        }

        if (document.compatMode=='CSS1Compat' &&
            document.documentElement &&
            document.documentElement.offsetHeight ) {
            winH = document.documentElement.offsetHeight;
            return winH
        }

        if (window.innerHeight && window.innerHeight) {
            winH = window.innerHeight;
            return winH;
        }
        }     

        function window_width() {
        if (document.body) {
        winW = document.body.offsetWidth;
        }

        if (document.compatMode=='CSS1Compat' &&
        document.documentElement &&
        document.documentElement.offsetWidth ) {
        winW = document.documentElement.offsetWidth;
        return winW
        }

        if (window.innerWidth && window.innerWidth) {
        winW = window.innerWidth;
        return winW;
        }
        }      
        /* Upon page load, get the page width and height, and store in a JSON object/Cookie */
        setTimeout(function(){
        setCookie('w_w',JSON.stringify({'width':window_width(),'height':window_height()}))
        })

    </script>

    <title>Állataink ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="img/logo.png" alt="FAKUTYA">
                
                <a class="nav-btn" href="index.php">Főoldal</a>
                <a class="nav-btn active" href="allatok.php" >Állataink</a>
                <a class="nav-btn " href="./index.php#elerhetoseg">Elérhetőségek</a>
                <!-- nem oldal hanem dropdown -->
                <a class="nav-btn" href="allat_elhelyezes.php">Örökbeadás</a>


                <?php session_start();
                echo $_SESSION["username"] ?>
                
            </nav>
        </div>

        <div class="main">
            <div class="allatok-container">
                <div class="allatok-search">
                    <div class="search-wrapper">
                        <form action="">
                            <input type="text" name="nev_search" id="nev_search" placeholder="PL.: Zola" autofocus>
                            <hr>
                            <input list="fajtak" name="faj_search" id="faj_search" placeholder="Német juhász">
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
                                    $counts[$row['kor'] <= 5 ? 1 : ($row['kor'] <= 10 ? 2 : ($row['kor'] <= 15 ? 3 : ($row['kor'] <= 20 ? 4 : 5)))] += $row['total'];
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
                                    <input value="20 and 30 " type="checkbox" id="4" name="kor_search[]"><label name="4label" for="4">> 20 <span style="color:#66666666;">('.$counts[4].')</span> </label>
                                </div>
                                <hr>';
                                echo $html;
                            ?>
                            
                            <datalist id="fajtak">
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
                            $ivar_search = empty($_GET['ivar_search']) ? "" : $_GET['ivar_search'];
                            $kor_search = empty($_GET['kor_search']) ? "" : $_GET['kor_search'];

                            $query = "";
                            $query .= "FROM `allat` WHERE nev LIKE \"%$nev_search%\""
                            ."AND tipus LIKE \"%$faj_search%\""
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

                            $db = new mysqli("localhost", "root", "", "fakutya");
                            $db_amount = $db->query("SELECT COUNT(*) $query");
                            $result = $db->query("SELECT * $query");

                            $xy=json_decode($_COOKIE['w_w']);
                            $width=$xy->width;
                            $height=$xy->height;
                            
                            $html = '';
                            if ($width > 640) {
                                $totalItemPerLine = $width / 640;
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
                                    $added_at = substr($row[2], 0, 10);
                                    $IS_QUARANTINED = $row[3];
                                    $IS_BEFOGADHATO = $row[4];
                                    $IS_IVARTALAN = $row[5];
                                    $ivar = $row[7];
                                    $kor = $row[8];
                                    $suly = $row[9];
                                    $fog_allapot = $row[10];
                                    $tipus = $row[11];
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