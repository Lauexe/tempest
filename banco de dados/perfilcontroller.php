<?php

    include_once "conexaobd.php";
    include_once "perfil.php";
    include_once "perfildao.php";

    $perfilModel = new Perfil();
    $perfilDAO = new Perfildao();

    if(isset($_POST['cadastrar']))

    {
        $perfilModel->setNome_usuario($_POST['nome_usuario']);
        $perfilModel->setEmail($_POST['email']);
        $perfilModel->setSenha($_POST['senha']);

        $perfilDAO->Inserir($perfilModel);

        header('Location: ../perfil.html');
    }

?>