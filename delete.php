<?php
include_once "DB.php";

use portalove\DB;

if(isset($_GET['id'])) {
    $db = new DB('localhost', 'portalove-riesenia', 'root', '');
    $delete = $db->deleteEmail($_GET['id']);

    if($delete) {
        header("Location: admin.php");
    } else {
        echo "FATAL ERROR!!!!!";
    }
} else {
    header("Location: admin.php");
}


