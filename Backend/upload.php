<?php
require_once dirname(__DIR__) . '/Backend/autoload.php';
$api = new Calendar\Api($db, false);
$api->uploadFile();