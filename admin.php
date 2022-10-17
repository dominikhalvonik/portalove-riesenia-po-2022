<?php
include_once "DB.php";

use portalove\DB;
$db = new DB('localhost', 'portalove-riesenia', 'root', '');

$emails = $db->getAllEmails();
?>

<ul>
    <li><a href="admin.php">All emails</a></li>
    <li><a href="index.php">Web page</a></li>
</ul>
<br><br><br>

<ul>
    <?php
        foreach ($emails as $email) {
            echo "<li>Name: ".$email['name'].", From: ".$email['email'].", Message: ".$email['message']."</li>";
            echo '<li><a href="delete.php?id='.$email['id'].'">Delete</a></li>';
            echo '<li><a href="update_form.php?id='.$email['id'].'">Update</a></li>';
        }
    ?>
</ul>


