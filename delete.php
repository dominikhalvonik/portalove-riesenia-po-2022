<?php
include_once "db_connect.php";

if(isset($_GET['id'])) {
    $db = $GLOBALS['db'];
    $delete = $db->deleteEmail($_GET['id']);

    if($delete) {
        header("Location: admin.php");
    } else {
        echo "FATAL ERROR!!!!!";
    }
} else {
    header("Location: admin.php");
}


