<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Movie;
use App\Models\WatchedMovie;
use Illuminate\Http\Request;
use Validator;
use Illuminate\View\View;

class DefaultController extends Controller
{
    public function create(Request $request)
    {

        $categorias = Category::all();
        $filmes = [];
        return View('default.create', [
            'categorias' => $categorias,
            'filmes' => $request->session()->get('filmes') ?? [],
            'erro1' => ''
        ]);
    }

    public function store(Request $request)
    {
        $valido = Validator::make($request->all(), [
            'rate' => 'required',
            'category_id' => 'required',
            'movie_id' => 'required',
        ]);
        if (!$valido->fails()) {
            $watchedMovie = new WatchedMovie($request->all());
            $watchedMovie->save();
            return redirect()->route('default');
        } else {

            $filmes = Movie::where('category_id', $request->input('category_id'))->get();

            return redirect('/default/create')
                ->with(['erro1' => 'teste de erro', 'filmes' => $filmes])
                ->withErrors($valido)
                ->withInput();
        }
    }

    public function filmesPorCategorias($id)
    {
        $filmes = Movie::where("category_id", $id)->get();

        return $filmes;
    }
}
