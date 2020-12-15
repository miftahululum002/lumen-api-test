<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

/*$router->get('/', function () use ($router) {
    return $router->app->version();
});*/
/*$router->get('/', function(){
	return "<pre>No context-path matches the request URI</pre>";
});*/
$router->get('/', function(){
	return view('home');
});

$router->get('/buku', 'CPustaka@index');
$router->get('/buku/{id}', 'CPustaka@show');
$router->post('/buku', 'CPustaka@store');
$router->put('/buku/{id}', 'CPustaka@update');
$router->delete('/buku/{id}', 'CPustaka@delete');