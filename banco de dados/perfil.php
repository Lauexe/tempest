<?php

    class Perfil {

        private $id;
        private $nome_usuario;
        //private $avatar;//
        private $email;
        private $senha;
    
        public function getId() {
            return $this->id;
        }
        public function setId($id) {
            $this->id = $id;
        }
        public function getNome_usuario() {
            return $this->nome_usuario;
        }
        public function setNome_usuario($nome_usuario) {
            $this->nome_usuario = $nome_usuario;
        }
        public function getEmail() {
            return $this->email;
        }
        public function setEmail($email) {
            $this->email = $email;
        }
        public function getSenha() {
            return $this->senha;
        }
        public function setSenha($senha) {
            $this->senha = $senha;
        }

    }

?>