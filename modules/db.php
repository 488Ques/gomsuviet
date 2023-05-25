<?php

const HOST = 'localhost';
const DB = 'db_electronicshop';
const USERNAME = 'root';
const PASSWORD = 'root';
const CHARSET = 'utf8mb4';

function newDB(): PDO
{
    $dsn = sprintf('mysql:host=%s;dbname=%s;charset=%s', HOST, DB, CHARSET);
    $options = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];
    return new PDO($dsn, USERNAME, PASSWORD, $options);
}
