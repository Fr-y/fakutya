<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="css/forms.css?v=<?php echo time(); ?>">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>


    <title>Frissítés ≫ Kutyafa Nonprofit Civil Összefogás</title>
</head>
<body>

    <a href="javascript:history.back()">
        <img style="position:absolute; top:10pt; left:10pt;" width="50" height="50" src="img/return.svg" alt="Vissza" title="Vissza">
    </a>
    <?php
    session_start();
    if (!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true) {
        echo ' <h1 style="text-align:center;"> Állat változtatásához <a href="user_system/login.php">jelentkezz be! </a></h1>';
        exit;
    }
    ?>
    <div class="container">
        <?php
        require_once("config.php");
        $url_allat_id = $_GET['id'];
        $allat = $link->query("SELECT * FROM `allat` WHERE `allat_id` = \"$url_allat_id\"");
        $mezo = $allat -> fetch_row();
        $nev = $mezo[1];
        $IS_QUARANTINED = $mezo[3];
        $IS_IVARTALAN = $mezo[5];
        $IS_CHIPPED = $mezo[6];
        $ivar = $mezo[7];
        $kor = $mezo[8];
        $suly = $mezo[9];
        $fog_allapot = $mezo[10];
        $allapot = $mezo[14];
        $tulajdonsagok = $mezo[15];
        $USER_ID = $mezo[19];
        $befogadott = $link->query("SELECT befogado_id FROM befogadott_allatok WHERE ALLAT_ID = $url_allat_id");
        $befogado_arr = $befogadott -> fetch_row();
        if (isset($befogado_arr)) {
            $befogado = $befogado_arr[0];
        } else{
            $befogado = 0;
        }
        if ($_SESSION["id"] != $USER_ID && $_SESSION["id"] != $befogado && !$_SESSION["is_admin"]) {
            echo '<h1 style="text-align:center;">Csak a saját állatod adatait frissítheted</a></h1>';
            exit;
        }
        ?>
        <form id="feltoltes" method="post" class="form-container" action="" enctype="multipart/form-data">
            <h1>Állat örökbeadása</h1>
            <ul>
            <li> <label for="nev">Állat neve:<span class="star">*</span></label><input value="<?php echo $nev;?>" required type="text" name="nev" placeholder="Buksi"> </li>
            <li> <label for="ivar">Állat ivara:<span class="star">*</span></label><select required type="text" name="ivar">
                <option value="kan" <?php if ($ivar = "kan") {echo "selected";}?>>Kan (hím)</option>
                <option value="szuka" <?php if ($ivar = "kan") {echo "selected";}?>>Szuka (nőstény)</option>
                </select>
            </li>
            <li>
                <label for="ivartalan">Az állat ivartalanított?<span class="star">*</span></label> <input <?php if ($IS_IVARTALAN = "1") {echo "checked";}?> type="checkbox" name="ivartalan" id="ivartalan">
                <label for="chipped">Chippelt?<span class="star">*</span></label> <input <?php if ($IS_CHIPPED = "1") {echo "checked";}?> type="checkbox" name="chipped" id="chipped">
            </li>
            <li> <label for="kor">Állat becsült vagy számított kora (év):<span class="star">*</span></label><input required min="0" max="99" type="number" name="kor" placeholder="5" value="<?php echo $kor;?>"></li>
            <li> <label for="suly">Állat becsült vagy pontos súlya (kg): <span class="star">*</span></label><input required type="number" min="0" max="999" name="suly" placeholder="15" value="<?php echo $suly;?>"></li>
            <li title="Bővebb információt az állat állapota részben csatolj!"> 
                <label for="fog_allapot" >Állat fogazati állapota: <span class="star">*</span> </label>
                <select required type="choice" name="fog_allapot">
                    <option value="1" <?php if ($fog_allapot = 1) {echo "selected";}?>>Sértetlen</option>
                    <option value="2" <?php if ($fog_allapot = 2) {echo "selected";}?>>Fogkopás és vagy lazulás</option>
                    <option value="3" <?php if ($fog_allapot = 3) {echo "selected";}?>>Fogszuvas</option>
                    <option value="4" <?php if ($ivfog_allapotar = 4) {echo "selected";}?>>Foghiányos</option>
                </select>
            </li>
            <li>
                <label for="tulajdonsagok">Állat tulajdonságai: <i style="color: #111111CC;">Szín, szokások, barátságos-e, stb</i></label>
                <textarea form="feltoltes" name="tulajdonsagok" id="tulajdonsagok" cols="30" rows="10" maxlength="2000" placeholder="Fekete szőrű keverék macska, utcán találtuk. Mindenkivel kedves, nem karmol, nem harap..."><?php echo $tulajdonsagok;?></textarea>
            </li>
            <li>
                <label for="allapot">Állat állapota: <i style="color: #111111CC;">fogazat részlegezése, egészségügyi infók, stb.</i></label>
                <textarea form="feltoltes" name="allapot" id="allapot" cols="30" rows="5" maxlength="2000" placeholder="Két foga szuvas az egyik a bal felső kisőrlő, a másik pedig a jobb alsó kisőrlő foga. Egy éve bal hátsó lába törött.."><?php echo $allapot;?></textarea>
            </li>
            </ul>
            
            <input type="submit" name="submit" value="Feltöltés">
            <?php
                require_once "config.php";
                $db_amount = $link->query("SELECT COUNT(*) FROM allat");
                $totalItem = $db_amount->fetch_row()[0];
                if(isset($_POST["submit"])){
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
                    $ujnev = $_POST["nev"];
                    $frissites_sql = 'UPDATE allat SET 
                    nev = "'.$ujnev.'", 
                    is_ivartalan ='. $ivartalan.', 
                    is_chipped ='. $chipped.', 
                    ivar ="'.$_POST["ivar"].'", 
                    kor ='.$_POST["kor"].', 
                    suly ='.$_POST["suly"].', 
                    fog_allapot ='.$_POST["fog_allapot"].', 
                    allapot ="'.$_POST["allapot"].'", 
                    tulajdonsagok ="'.$_POST["tulajdonsagok"].'"
                    WHERE allat_id ='.$url_allat_id;
                    $link->query("SET FOREIGN_KEY_CHECKS=0;");
                    $frissites = $link->query($frissites_sql);
                    $link->query("SET FOREIGN_KEY_CHECKS=1;");

                    echo '<script>window.location.href = "/index.php";</script>';
                }
?>

        </form>
    </div>

    
</body>
</html>