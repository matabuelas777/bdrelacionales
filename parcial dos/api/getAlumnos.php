<?php 
    header("Content-Type: application/json");
    header("Acces-Control-Allow-Origin: *");

    $usuarios=[
        ["id"=>1, "nombre" => "Angel Wong", "correo" => "angel@gmail.com"],
        ["id"=>1, "nombre" => "Paolo Valedez", "correo" => "Paolo@gmail.com"],
        ["id"=>1, "nombre" => "Luis Moya ", "correo" => "Luis@gmail.com"],
    ];

    echo json_encode($usuarios);