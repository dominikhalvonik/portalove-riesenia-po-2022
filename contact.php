<?php
include_once "DB.php";

use portalove\DB;

if(isset($_POST['contact_name'])) {
    $db = new DB('localhost', 'portalove-riesenia', 'root', '');
    $insert = $db->insertEmail($_POST['contact_name'], $_POST['contact_email'], $_POST['contact_message']);

    if($insert) {
        header("Location: index.php");
    } else {
        echo "FATAL ERROR!!!!!";
    }
} else {
    header("Location: index.php");
}


