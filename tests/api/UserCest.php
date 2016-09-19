<?php


class UserCest
{
    public function _before(ApiTester $I)
    {
        
    }

    public function _after(ApiTester $I)
    {
        
    }

    public function CreateUser(ApiTester $I)
    {
        $I->wantTo('Crear un user de prueba');
        $I->sendPOST('user',[
            'name' => 'Usuario Pruebeaq',
            'email' => 'usua1rio@preuebas.com',
            'password' => bcrypt('1234'),
        ]); 
        $I->seeResponseCodeIs(200); //OK
        $I->seeResponseIsJson();
    }
}