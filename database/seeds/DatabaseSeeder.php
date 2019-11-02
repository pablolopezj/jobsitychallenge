<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Models\Entry;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(Entry::class, 10)->create();
    }
}
