<?php
include_once "db_connect.php";
$db = $GLOBALS['db'];

$emailDetails = $db->getEmailDetails($_GET['id']);
?>

<form action="update.php" method="post">
    From:<br>
    <input type="text" name="from" value="<?php echo $emailDetails[0]['name']; ?>" /><br>
    Email:<br>
    <input type="email" name="email" value="<?php echo $emailDetails[0]['email']; ?>" /><br>
    Content:<br>
    <textarea name="content"><?php echo $emailDetails[0]['message']; ?></textarea><br>
    <input type="hidden" name="id" value="<?php echo $emailDetails[0]['id']; ?>">
    <input type="submit" name="submit" value="Update">
</form>