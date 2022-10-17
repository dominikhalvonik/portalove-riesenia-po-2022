<?php
include_once "DB.php";

use portalove\DB;
$db = new DB('localhost', 'portalove-riesenia', 'root', '');

if(isset($_POST['submit'])) {
    $update = $db->updateEmail($_POST['id'], $_POST['from'], $_POST['email'], $_POST['content']);

    if($update) {
        header("Location: admin.php");
    } else {
        echo "FATAL ERROR!!!!";
    }
} else {
    header("Location: admin.php");
}