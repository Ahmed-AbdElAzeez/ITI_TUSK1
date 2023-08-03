<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/homepage/{username} ', function ($username) {
    $info= ["name"=>"Ahmed zezo"];
    $data= ["username"=>$username , "info"=>$info];
    return view('homepage',$data);
});


Route::get('/user', function () {
    $allusers=[
        ["name"=>"Ahmed" , "email"=>"ahmed@zezo", "id"=>1],
        ["name"=>"abd elaziz" , "email"=>"abdelaziz@zezo", "id"=>2],
        ["name"=>"ali" , "email"=>"ali@zezo", "id"=>3],
    ];
    return view('user', ["user"=>$allusers]);
});

## call function userIndex in the usercontroller
use App\Http\Controllers\UserController;
Route::get("/users",[UserController::class, "usersIndex"]);

# userController::class ---> give the route the class scope ---> so
# the route can see all the functions in the class


Route::get("user/{id}",[UserController::class, "show"]);





//use App\Http\Controllers\UserController;
// Route::get("/user",[UserController::class, "usersIndex"]);

// # userController::class ---> give the route the class scope ---> so
// # the route can see all the functions in the class


// Route::get("user/{id}",[UserController::class, "show"]);

// use App\Http\Controllers\ProductController;
// Route::get("/products", [ProductController::class, "index"])->name("products.index");
// Route::get("/products/create", [ProductController::class, "create"])->name("products.create");
// Route::get('/products/{id}', [ProductController::class, "show"])->name("product.show");
// ### route method POST
// Route::post("/products", [ProductController::class, "store"])->name("products.store");
