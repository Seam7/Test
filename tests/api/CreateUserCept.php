<?php 
$I = new ApiTester($scenario);
$I->wantTo('Crear un todo de prueba');
$I->sendPOST('user',[
    'name' => 'Test23er',
	'last_name' => 'Doe',
	'email' => 'test43@smthw.com',
	'password' => bcrypt('1234'),
]); 
$I->seeResponseCodeIs(200); //OK
$I->seeResponseIsJson();
