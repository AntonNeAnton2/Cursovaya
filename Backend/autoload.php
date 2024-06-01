<?php
spl_autoload_register(function($className){
    $fileName = __DIR__ . '/' . str_replace( "\\", "/", $className) . '.php';
    if(file_exists($fileName)){
        require_once $fileName;
    }
});
require_once dirname(__DIR__) . '/Backend/config.php';
require_once "Modules/require.php";