<?php

namespace portalove;

class DB
{
    private $host;
    private $dbname;
    private $username;
    private $password;

    private $connection;

    public function __construct($host, $dbname, $username, $password)
    {
        $this->host = $host;
        $this->dbname = $dbname;
        $this->username = $username;
        $this->password = $password;

        try {
            $this->connection = new \PDO('mysql:host='.$this->host.';dbname='.$this->dbname, $this->username, $this->password);
        } catch (\PDOException $e) {
            print "Error!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    public function insertMenuItem($sysName, $displayName, $icon, $contentId)
    {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO menu(sys_name, display_name, icon, content_id, created_at, updated_at)
                VALUE ('".$sysName."', 
                '".$displayName."', 
                '".$icon."', 
                ".$contentId.", 
                '".$dateTime."', 
                '".$dateTime."')";

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function getMenu()
    {
        $menuItems = [];
        $sql = "SELECT M.*, C.content AS content, C.display_name AS title 
                FROM menu AS M 
                INNER JOIN content AS C ON M.content_id = C.id";
        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $menuItems[] = [
                'name' => $row['display_name'],
                'icon' => $row['icon'],
                'content' => $row['content'],
                'title' => $row['title']
            ];
        }

        return $menuItems;
    }

    public function insertEmail($name, $email, $message)
    {
        $dateTime = date('Y-m-d H:i:s', time());
        $sql = "INSERT INTO email(name, email, message, created_at, updated_at) 
                VALUE ('".$name."', '".$email."', '".$message."', '".$dateTime."', '".$dateTime."')";
        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }

    public function getAllEmails()
    {
        $emails = [];
        $sql = "SELECT * FROM email";

        $query = $this->connection->query($sql);

        while ($row = $query->fetch()) {
            $emails[] = [
                'id' => $row['id'],
                'name' => $row['name'],
                'email' => $row['email'],
                'message' => $row['message'],
                'created_at' => $row['created_at']
            ];
        }

        return $emails;
    }

    public function deleteEmail($id)
    {
        $sql = "DELETE FROM email WHERE id = ".$id;

        try {
            $this->connection->exec($sql);
            return true;
        } catch (\PDOException $e) {
            return false;
        }
    }
}