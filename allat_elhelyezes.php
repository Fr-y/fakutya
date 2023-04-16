<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="css/allat_elhelyezes.css?v=<?php echo time(); ?>">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">

    <title>Örökbeadás ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>
<body>
    <div class="site-container" style="text-align: center; width:50%; margin: 0 auto;">
        <form method="post" class="form-container">
            <h1>Állat örökbeadása</h1>
            <ul>

            </ul>
            <li> <label for="nev">Állat neve:</label><input required type="text" name="nev"> </li>
            <li> <label for="ivar">Állat ivara:</label><select required type="text" name="ivar">
                <option value="kan">Kan</option>
                <option value="szuka">Szuka</option>
                </select>
            </li>
            <li>
                <label for="ivartalan">Ivartalanított?</label> <input type="checkbox" name="ivartalan" id="ivartalan">
            </li>
            <li> <label for="kor">Állat becsült vagy számított kora (év):</label><input required min="0" max="30" type="number" name="kor"></li>
            <li> <label for="suly">Állat becsült vagy pontos súlya:</label><input required type="number" min="0" max="60" name="suly"></li>
            <li> 
                <label for="fog_allapot">Állat fogazati állapota:</label><select required type="choice" name="fog_allapot">
                <option value="1">Sértetlen</option>
                <option value="2">Fogkopás és vagy lazulás</option>
                <option value="3">Fogszuvas</option>
                <option value="4">Foghiányos</option>
            </select></li>
            <li>
                <label for="faj">Állatfaj: </label>
                <select name="faj" id="faj">
                    <option value="kutya">Kutya</option>
                    <option value="kutya">Macska</option>
                    <option value="kutya">Egyéb</option>
                </select>
            </li>
            <li>
                <label for="tipus">Faj típus: </label>
                <input list="tipusok" name="tipus" type="text">
                <datalist id="tipusok">
                    <?php
                    require_once "config.php";
                    $tipusok = $link->query("SELECT DISTINCT tipus FROM `allat`");
                    $db_amount = $link->query("SELECT COUNT(distinct TIPUS) FROM `allat`;");
                    $n = $db_amount->fetch_row()[0];
                    for($i = 0; $i < $n; $i++){
                        $tipus = $tipusok -> fetch_row();
                        echo "<option value=\"$tipus[0]\">$tipus[0]</option>";
                    }
                    ?>
                </datalist>
            </li>
            <li>
                <label for="kep">Kép az állatról: </label>
                <input name="kep" id="kep" type="file" width="360" height="360">
                <img width="280" height="280" src="img/upload.png" alt=" " id="img_display">
                <script lang="JavaScript">
                    document.getElementById("kep").onchange = function(event) {
                    var tmppath = URL.createObjectURL(event.target.files[0]);
                        document.getElementById("img_display").src = tmppath;
                    };
                </script>
            </li>
            <li>
                    <label for="email">Email: </label> <input type="email" name="email", id="email">
            </li>
            <li>
                    <label for="telefon">Telefonszám: </label> <input type="tel" name="telefon", id="telefon">
            </li>
            

            <input type="submit" name="submit" value="submit">
            <?php
                require_once "config.php";
                if(isset($_POST["submit"])){
                    $feltoltes = $link->Prepare("INSERT INTO allat (NEV, IS_IVARTALAN, IVAR, KOR, SULY, FOG_ALLAPOT, FAJ, TIPUS, IMG, EMAIL, TELEFON) VALUES (?,?,?,?,?,?,?,?,?,?,?)");
                    if ($_POST["ivartalan"] = "on") {
                        $ivartalan = 1;
                    } else {
                        $ivartalan = 0;
                    }
                    ob_start();
                    include('allat_elhelyezes.php');
                    $html = ob_get_clean();
                    $dom = new DOMDocument();
                    $dom->loadHTML($html);
                    $img = $dom->getElementsByTagName('img')->item(0);
                    $src = $img->getAttribute('src');
                    $db_amount = $link->query("SELECT COUNT(allat_id) FROM `allat`;");
                    $id = $db_amount->fetch_row()[0] + 1;
                    $path = "allatkepek/$id.jpg";
                    copy($src, $path);

               

                    $feltoltes->execute([$_POST["nev"],$ivartalan,$_POST["ivar"],$_POST["kor"],$_POST["suly"],$_POST["fog_allapot"],$_POST["faj"],$_POST["tipus"],$path,$_POST["email"],$_POST["telefon"]]);
                }

            ?>

        </form>
    </div>

    
</body>
</html>