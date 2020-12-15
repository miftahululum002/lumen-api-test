<?php

namespace App\Http\Controllers;
use App\MPustaka;
use Illuminate\Http\Request;

class CPustaka extends Controller{
  
  public function __construct(){
      
  }

  public function index(){
    $buku = MPustaka::all();
    return $buku;
  }

  public function show($id){
    $buku = MPustaka::find($id);
    if(!$buku){
      return response()->json([
        'message' => 'Buku not found'
      ]);
    }
    return $buku;
  }

  public function store(Request $request){
    return MPustaka::create($request->all());
  }

  public function update(Request $request, $id){
    $buku = MPustaka::findOrFail($id);
    if($buku){
      $buku->update($request->all());
      return response()->json([
        'message' => 'Buku has been updated'
      ], 200);
    }

    return response()->json([
      'message' => 'Buku not found'
    ], 404);
  }

  public function delete($id){
    $buku = MPustaka::find($id);

    if($buku){
      $buku->delete();

      return response()->json([
        'message' => 'Buku has been deleted'
      ]);
    }

    return response()->json([
      'message' => 'Buku not found'
    ], 404);
  }
}
