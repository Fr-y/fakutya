<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css">
    <link rel="stylesheet" href="css/homepage.css">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">

    <title>Fakutya ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <img src="img/logo.png" alt="FAKUTYA">

                <a class="nav-btn active" href="index.php">Főoldal</a>
                <a class="nav-btn" href="allatok.php">Állataink</a>
                <a class="nav-btn" href="#elerhetoseg">Elérhetőségek</a>
                <a class="nav-btn" href="allat_elhelyezes.php">Örökbeadás</a>
                    <?php
                    session_start();
                    if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
                        echo '<a class="nav-btn" href="user_system/login.php"> Bejelentkezés</a>';
                    } else {
                        echo '<a class="nav-btn" href="fiok.php">'. $_SESSION["username"].'</a>';
                    }
                    ?>
                


            </nav>

        </div>
        <div class="main">
        <script type="text/javascript" src="https://cookieconsent.popupsmart.com/src/js/popper.js"></script><script> window.start.init({Palette:"palette2",Mode:"banner bottom",Theme:"classic",Message:"Ez a weboldal cookie-kat használ annak érdekében, hogy a legjobb élményt nyújthassa webhelyünk.",ButtonText:"Értem",LinkText:"",Time:"1",})</script>
            <div class="about-content">
                <div class="img-container">
                    <img class="mainpage-img" src="kutyakepek/225.jpg">

                </div>
                <div class="text">
                    <p class="text-block">
                        <span class="title">Üdvözöljük a Fakutya Menhelyen!</span> 
                        <br><br>
                            Cégünk egy állatmentő és -védelmi szervezet, amely elsősorban kutyákat fogad be, gondoz, és keres nekik örökbefogadókat. Tevékenységi körünk az állatvédelem területére korlátozódik, és elkötelezettek vagyunk az állatokkal való foglalkozásban.
                        <br>
                        <br>
                            <span style="color: #4c4c4c;">A Fakutya Menhely célja, hogy segítsen a kutyáknak, akik valamilyen okból az utcán vagy éppen magukra hagyva találják magukat.</span> Mi gondoskodunk az állatokról, amíg nem találnak örökbefogadót, és igyekszünk nekik boldog, szerető otthont biztosítani. Célunk az, hogy a kutyák minél kevesebb stresszt tapasztaljanak meg, és a lehető legjobb életminőséget élvezhessék.
                        <br>
                        <br>
                            Csapatunk olyan lelkes és tapasztalt állatbarátokból áll, akik szívvel-lélekkel dolgoznak az állatokért. Az állatok egészségét és jólétét mindenkor az első helyen tartjuk, és minden egyes állat esetében különösen figyelünk az egyedi igényekre.
                        <br>
                        <br>
                            A Fakutya Menhelyen minden kutya számít, és mindannyiuknak megpróbáljuk megtalálni a legjobb megoldást. Bár az örökbefogadás a legjobb dolog, amit egy állatért tehetünk, számunkra az is fontos, hogy az állatoknak addig is biztonságos és kényelmes otthonuk legyen. Minden egyes kutyánkhoz különleges kötődéssel és felelősséggel viszonyulunk, és igyekszünk megtalálni számukra az ideális családot.
                        <br>
                        <br>
                            Reméljük, hogy a Fakutya Menhely munkája felkeltette az érdeklődését!
                    </p>
                </div>


            </div>
            <div class="donate-content">
                <div class="text">
                    <h1 class="title">Állatelhelyezés</h1>
                    <br>
                    <p class="text-block">
                        A legtöbb menhely Magyarországon teltházon üzemel. Ezért talált állat elhelyézésre sokszor nincs azonnali lehetőség, hiszen a menhelyek helyhiány miatt nem altatnak állatot.
                    </p>
                    <div class="btn-container"><a class="btn" href="allat_elhelyezes.php">Örökbeadás</a></div>


                </div>

                <div class="img-container">
                    <img class="mainpage-img" src="kutyakepek/187.jpg">

                </div>
            </div>
            <div class="tamogatas-content">
                <div class="img-container">
                    <img class="mainpage-img" src="kutyakepek/255.jpg">

                </div>
                <div class="text">
                    <h1 class="title" style="text-shadow: 2px 2px #c2f4e8;">
                        SZJA 1%
                    </h1>
                    <br>
                    <p class="text-block">
                        A Kutyafa NCÖ. 20 éve csökkenti a kóbor állatok létszámát állatmentés, állat-örökbeadás, ivartalanítás és szemléletformálás segítségével. 18 éve nyitotta meg kapuit állatvédelmi központunk, a Fakutya Menhely, ahol kutyamenhely, macskamentő és egyéb kisállat
                        állomás működik.
                    <br>
                        A megnyitás óta közel 5000 állat került szerető gazdához. Állatmentő missziónkat csak az Önök segítségével folytathatjuk. Amennyiben egyetért céljainkkal, kérjük, ajánlja fel adója 1%-át a Fakutya Menhelynek
                    <br><br>
                        <i>
                            A Kutyafa Nonprofit Civil Összefogás (élet)adószáma: 63874128-1-41
                        </i>
                    </p>

                </div>
            </div>
            <div id="elerhetoseg" class="elerhetoseg-content">
                <div class="text">
                    <h1 >Elérhetőségeink</h1>
                    <br>
                    <ul style="text-align: left;">
                        <li><b> KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS</b></li>
                        <li>Budapest, Mária királyné útja 18, 1213</li>
                        <li>+36 50 121 73 04</li>
                        <li>fakutya@fkn.hu</li>

                        <li><b> NYITVATARTÁS: </b></li>
                        <li>Hétfő-Szombat: 9:00-20:00</li>

                        <li>Vasárnap: zárva</li>
                    </ul>


                </div>
                <div class="map-container">
                    <iframe height="800pt" width="100%" frameborder="0" style="border:0" referrerpolicy="no-referrer-when-downgrade" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDu_H_Pu0y-Zrb9tOoi5_pHkAxut73vIOw&q=C36M+79 Budapest&maptype=satellite&zoom=20&center=47.41074879372286, 19.083417848554443"
                        allowfullscreen>
                        </iframe>
                </div>
            </div>
            <hr>






        </div>

        <div class="footer">
            © 2023 FAKUTYA - KUTYAFA NONPROFIT CIVIL ÖSSZEFOGÁS – MINDEN JOG FENNTARTVA. | <a href="/adatkezelesi_tajekoztato.html"> Adatkezelési nyilatkozat </a>
        </div>

    </div>

</body>

</html>