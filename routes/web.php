<?php

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

Route::get('/', function () {
    return view('welcome');
})->name('default');

Route::get("/default/create", "DefaultController@create")->name('create');
Route::get("/default/pegar-filmes-por-categorias/{id}", "DefaultController@filmesPorCategorias")->name('filmes');
Route::post("/default/store", "DefaultController@store")->name('store');

