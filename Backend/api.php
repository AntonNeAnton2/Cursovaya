<?php
require_once dirname(__DIR__) . '/Backend/autoload.php';
session_start();
new Calendar\Api($db);