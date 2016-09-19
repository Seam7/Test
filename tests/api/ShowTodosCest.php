<?php


class ShowTodosCest
{
    
    public function ShowTodos(ApiTester $I)
    {
        $I->wantTo('Show all the To dos for a User');
        $I->amHttpAuthenticated('service_user', '123456');
        $I->haveHttpHeader('Content-Type', 'application/x-www-form-urlencoded');
        $I->sendGET('users/2/todos'); //Linea super importante
        $I->seeResponseCodeIs(200); // 200
        $I->seeResponseIsJson();
    }

    public function ShowOneTodo(ApiTester $I)
    {
        $I->wantTo('Show one To do from a user');
        $I->amHttpAuthenticated('service_user', '123456');
        $I->haveHttpHeader('Content-Type', 'application/x-www-form-urlencoded');
        $I->sendGET('users/2/todos/1'); //Linea super importante
        $I->seeResponseCodeIs(200); // 200
        $I->seeResponseIsJson();
    }
}
