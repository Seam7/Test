<?php 
$I = new ApiTester($scenario);
$I->wantTo('Show all the To dos for a User');
// $I->amHttpAuthenticated('service_user', '123456');
// $I->haveHttpHeader('Content-Type', 'application/x-www-form-urlencoded');
$I->sendGET('users/2/todos'); //Linea super importante
$I->seeResponseCodeIs(200); // 200
$I->seeResponseIsJson();
//$I->seeResponseContains('');