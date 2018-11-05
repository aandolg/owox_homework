<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17.11.18
 * Time: 14:54
 */
namespace GoodWorkIn\Http;

class Request
{

    private $header;
    private $allowedMethods = ['GET', 'HEAD', 'POST', 'PUT'];

    public function __construct($server)
    {
        $this->header = $server;
    }


    public function getTypeRequest()
    {
        return $this->header['REQUEST_METHOD'];
    }
}