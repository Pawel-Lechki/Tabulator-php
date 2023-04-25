<?php

class Gateway{
    private PDO $conn;
    public function __construct(Database $database)
    {
        $this->conn = $database->getConnection();
    }

    public function getCategories(){
        $sql = "SELECT * FROM category";

        $stmt = $this->conn->query($sql);

        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }
    public function getAll(){
        $sql = "SELECT * FROM products";

        $stmt = $this->conn->query($sql);

        $data = [];

        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $row['stock'] = (bool) $row['stock'];

            $data[] = $row;
        }

        return $data;
    }

    public function getWithCategory($category){
        $sql = "SELECT * FROM products WHERE category=$category";

        $stmt = $this->conn->query($sql);

        $data = [];

        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $row['stock'] = (bool) $row['stock'];

            $data[] = $row;
        }

        return $data;
    }

}