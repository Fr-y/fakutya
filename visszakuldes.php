<?php
    require_once "config.php";
    $url_allat_id = $_GET['id'];
    $sql = "UPDATE `allat` SET `BEFOGADOTT` = '0' WHERE `allat`.`ALLAT_ID` = $url_allat_id;";
    $update = $link->query($sql);

    session_start();
    
    $delete_sql = 'DELETE FROM befogadott_allatok WHERE allat_id ='.$url_allat_id;
    $delete = $link->query($delete_sql);

    $tranzakcio_sql = 'INSERT INTO `tranzakciok` (`USER_ID`, `ALLAT_ID`, `TIPUS`) VALUES ('.$_SESSION["id"].','.$url_allat_id.', "visszakuldes")';
    $tranzakcio = $link->query($tranzakcio_sql);

    header("Location: ".$_SERVER['HTTP_REFERER']);
    ?>