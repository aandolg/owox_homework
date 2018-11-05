<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17.11.18
 * Time: 18:00
 */

namespace GoodWorkIn\Http;

use PHPUnit\Framework\TestCase;
use GoodWorkIn\Http;

class RequestTest extends TestCase
{
    /**
     * @dataProvider checkAllowedMethod
     */
    public function testGetTypeRequestAllowed($method)
    {
        $request = new Request(['REQUEST_METHOD' => $method]);
        $this->assertEquals($method, $request->getTypeRequest());
    }

    /**
     * @dataProvider checkDisallowedMethod
     */
    public function testGetTypeRequestDisallowed($method)
    {
        $request = new Request(['REQUEST_METHOD' => $method]);
        $this->assertEquals($method, $request->getTypeRequest());
    }

    public function checkAllowedMethod()
    {
        return [
            'test for POST' => ['POST'],
            'test for GET'  => ['GET'],
            'test for HEAD' => ['HEAD'],
            'test for PUT'  => ['PUT'],
        ];
    }

    public function checkDisallowedMethod()
    {
        return [
            'test for OPTION' => ['OPTION'],
            'test for DELETE'  => ['DELETE'],
        ];
    }
}
