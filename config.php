<?php
    $user = 'root';
    $password = '';

    try{
        $pdo = new PDO("mysql:host=localhost;dbname=BookSwap", $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }catch(PDOException $e){
        die("Connection failed: " . $e->getMessage());
    }
    