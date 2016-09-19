<?php

use Illuminate\Database\Seeder;

use App\Todo;
use App\User;
class TodosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	foreach(User::all() as $user)
    	{
    		for($i=1; $i < rand(0,3);$i++)
    		{
    			$user->todos()->save(factory(Todo::class)->make()); //user->todos() donde todos() es el nombre de la RELACION en el modelo.
        		// factory(Todo::class, 30)->create();
    		}
    	}
    }
}
