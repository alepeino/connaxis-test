<?php
require 'app/config/database.php';

$db = new DATABASE_CONFIG();
$config = $db->default;

$mysqli = new mysqli($config['host'], $config['login'], $config['password'], $config['database']);

if ($mysqli->connect_error) {
    error_log($mysqli->connect_errno . ' ' . $mysqli->connect_error);
    exit();
}

if (!$mysqli->query("CALL do_matches();")) {
    error_log($mysqli->error);
    exit();
};

$mysqli->close();
