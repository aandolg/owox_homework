<?php

require_once __DIR__ . '/../vendor/autoload.php';
$request =  new \GoodWorkIn\Http\Request($_SERVER);
var_dump($request);