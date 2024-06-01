<?php
define('DEV', 0);
define('VERSION', '1.0.0.9');
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'calendar');

define('HOST', 'https://bots-tg.ru/');
define('HOST_PATH', dirname(__DIR__) . '/Frontend/');
define('UPLOADS_PATH', dirname(__DIR__) . '/Frontend/uploads/');
define('UPLOADS_LINK', HOST . basename(UPLOADS_PATH) . '/');
define('CONTENT_PATH', dirname(__DIR__) . '/Frontend/content/');
define('CALENDAR_IMAGES_PATH', dirname(__DIR__) . '/Frontend/img/calendar/');

define('SESSION_EXPIRES', 30 * 3600);
define('VERIFY_LINK_EXPIRES', 3600);
define('CONFIRM_CODE_EXPIRES', 3600);

define('TITLE', 'Teacher Curriculum Planner');

$db = new Calendar\Db(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if(DEV){
    ini_set('display_errors', 'On');
    error_reporting(E_ALL);
}