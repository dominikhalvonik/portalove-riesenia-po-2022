<?php
include_once "DB.php";

use portalove\DB;
$db = new DB('localhost', 'portalove-riesenia', 'root', '');

global $db;

session_start();
