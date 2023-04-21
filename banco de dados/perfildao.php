<?php

    class Perfildao
    {
        public function Inserir(Perfil $perfil) {
            try {
                $sql = "INSERT INTO perfil (nome_usuario, email, senha) VALUES ( :nome_usuario, :email, :senha)";

                $p_sql = Conexao::getInstance()->prepare($sql);

                $p_sql->bindValue(":nome_usuario", $perfil->getNome_usuario());
                $p_sql->bindValue(":email", $perfil->getEmail());
                $p_sql->bindValue(":senha", $perfil->getSenha());

                return $p_sql->execute();
            
            } catch (Exception $e) {
                print "Ocorreu um erro ao tentar inserir esse perfil:";
            }
        }
    }

?>