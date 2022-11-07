<?php
include_once "db_connect.php";
$db = $GLOBALS['db'];

$emails = $db->getAllEmails();
if(!isset($_SESSION['is_admin']) || $_SESSION['is_admin'] === false) {
?>
    <form action="login.php" method="post">
        Username: <br>
        <input type="text" name="username" placeholder="Username"><br>
        Password: <br>
        <input type="password" name="password"><br>
        <br>
        <input type="submit" name="submit" value="Login">
    </form>
<?php
} else {
?>

<ul>
    <li><a href="admin.php">All emails</a></li>
    <li><a href="index.php">Web page</a></li>
    <li><a href="logout.php">Logout</a></li>
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
<?php
}
?>

