<?php
    class User{
        private $pdo;
        
        public function __construct($pdo){
            $this->pdo = $pdo;
        }

        public function register($username, $password){
            
        }
}