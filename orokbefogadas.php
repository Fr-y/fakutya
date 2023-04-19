<?php
    require_once "config.php";
    $url_allat_id = $_GET['id'];
    $sql = "UPDATE `allat` SET `BEFOGADOTT` = '1' WHERE `allat`.`ALLAT_ID` = $url_allat_id;";
    $update = $link->query($sql);

    session_start();
    
    $insert_sql = 'INSERT INTO `befogadott_allatok`(`ALLAT_ID`, `BEFOGADO_ID`) VALUES ('.$url_allat_id.','. $_SESSION["id"].')';
    $insert = $link->query($insert_sql);

    $tranzakcio_sql = 'INSERT INTO `tranzakciok`(`USER_ID`, `ALLAT_ID`, `TIPUS`) VALUES ('.$_SESSION["id"].','.$url_allat_id.', befogadas)';
    $tranzakcio = $link->query($tranzakcio_sql)


    header("location:javascript://history.go(-1)");




?>