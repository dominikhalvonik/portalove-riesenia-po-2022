<?php
include_once "db_connect.php";

if(isset($_POST['contact_name'])) {
    $db = $GLOBALS['db'];
    $insert = $db->insertEmail($_POST['contact_name'], $_POST['contact_email'], $_POST['contact_message']);

    if($insert) {
        header("Location: index.php");
    } else {
        echo "FATAL ERROR!!!!!";
    }
} else {
    header("Location: index.php");
}


