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


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>


    <title>Örökbeadás ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>
<body>
    <div class="container">
        <form method="post" class="form-container" action="" enctype="multipart/form-data">
            <h1>Állat örökbeadása</h1>
            <ul>
            <li> <label for="nev">Állat neve:</label><input required type="text" name="nev"> </li>
            <li> <label for="ivar">Állat ivara:</label><select required type="text" name="ivar">
                <option value="kan">Kan (hím)</option>
                <option value="szuka">Szuka (nőstény)</option>
                </select>
            </li>
            <li>
                <label for="ivartalan">Az állat ivartalanított?</label> <input type="checkbox" name="ivartalan" id="ivartalan">
            </li>
            <li>
                <label for="chipped">Chippelt?</label> <input type="checkbox" name="chipped" id="chipped">
            </li>
            <li> <label for="kor">Állat becsült vagy számított kora (év):</label><input required min="0" max="99" type="number" name="kor"></li>
            <li> <label for="suly">Állat becsült vagy pontos súlya:</label><input required type="number" min="0" max="999" name="suly"></li>
            <li title="Bővebb információt az állat állapota részben csatolj!"> 
                <label for="fog_allapot" >Állat fogazati állapota: <span style="color: red;">*</span> </label>
                <select required type="choice" name="fog_allapot">
                    <option value="1">Sértetlen</option>
                    <option value="2">Fogkopás és vagy lazulás</option>
                    <option value="3">Fogszuvas</option>
                    <option value="4">Foghiányos</option>
                </select>
            </li>
            <li>
                <label for="faj">Állatfaj: </label>
                <select required onchange="egyeb();" name="faj" id="faj">
                    <option value="kutya">Kutya</option>
                    <option value="macska">Macska</option>
                    <option value="egyeb">Egyéb</option>
                </select>
            </li>
            <li id="egyeb-input" style="display:none">
                <label for="egyeb-faj">Egyéb faj: </label>
                <input type="text" name="egyeb-faj" id="egyeb-faj">
            </li>
            <script lang="JavaScript">
                function egyeb(){
                    egyebvalue = document.getElementById("faj").value
                    if (egyebvalue == "egyeb") {
                        document.getElementById("egyeb-input").style.display = "block";
                        document.getElementById("egyeb-faj").required = "true";
                    } else {
                        document.getElementById("egyeb-input").style.display = "none";
                    }
                }
            </script>
            <li>
                <label for="tipus">Faj típus: </label>
                <input required list="tipusok" name="tipus" type="text">
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
                <input name="kep" id="kep" type="file">
                <img  width="64" height="64" src="img/upload.png" alt=" " id="img_display">
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
                    <script lang="JavaScript">
                    const phoneInputField = document.querySelector("#telefon");
                    const phoneInput = window.intlTelInput(phoneInputField, {
                        hiddenInput: "num",
                        separateDialCode: true,
                        preferredCountries: ["hu", "ro", "de"],
                        utilsScript:
                        "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
                    });
                    </script>
            </li>
            </ul>
            
            <input type="submit" name="submit" value="Feltöltés">
            <?php
                require_once "config.php";
                $db_amount = $link->query("SELECT COUNT(*) FROM allat");
                $totalItem = $db_amount->fetch_row()[0];
                if(isset($_POST["submit"])){
                    $feltoltes = $link->Prepare("INSERT INTO allat (NEV, IS_IVARTALAN, IS_CHIPPED, IVAR, KOR, SULY, FOG_ALLAPOT, FAJ, TIPUS, IMG, EMAIL, TELEFON) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                    if ($_POST["ivartalan"] = "on") {
                        $ivartalan = 1;
                    } else {
                        $ivartalan = 0;
                    }
                    if ($_POST["chipped"] = "on") {
                        $chipped = 1;
                    } else {
                        $chipped = 0;
                    }
                    if ($_POST["egyeb-faj"] != "") {
                        $faj = $_POST["egyeb-faj"];
                    } else {
                        $faj = $_POST["faj"];
                    }
                    $nev = $_POST["nev"];
                    $id = $totalItem + 1;
                    // kép letöltés
                    if ($_FILES["kep"]["error"] == UPLOAD_ERR_OK) {
                        $target_dir = "allatkepek/"; 
                        $img = $target_dir . basename($nev . $id);
                        move_uploaded_file($_FILES["kep"]["tmp_name"], $img);
                    } else {
                        $img = "img/placeholder.png";
                    }
                    
               

                    $feltoltes->execute([$_POST["nev"],$ivartalan,$chipped,$_POST["ivar"],$_POST["kor"],$_POST["suly"],$_POST["fog_allapot"],$faj,$_POST["tipus"],$img,$_POST["email"],$_POST["num"]]);
                    echo '<script>window.location.href = "/index.php";</script>';
                }
?>

        </form>
    </div>

    
</body>
</html>