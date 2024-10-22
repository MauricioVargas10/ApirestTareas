<?php

namespace App\Http\Controllers;

use App\Models\Tarea;
use Illuminate\Http\Request;

class TareaController extends Controller
{
    public function index()
    {
        $tareas = Tarea::all();
        return response()->json($tareas);
    }
    public function store(Request $request)
    {
        $rules = ['name' => 'required|string|min:1|max:100'];
        $validator = \Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()->all()
            ],400);
        }
        $tarea = new Tarea($request->input());
        $tarea->save();
        return response()->json([
            'status' => true,
            'message' => 'tarea creada correctamente'
        ],200);
    }
    public function show(Tarea $tarea)
    {
        return response()->json(['status' => true, 'data' => $tarea]);
    }
    public function update(Request $request, Tarea $tarea)
    {
        $rules = ['name' => 'required|string|min:1|max:100'];
        $validator = \Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()->all()
            ],400);
        }
        $tarea->update($request->input());
        return response()->json([
            'status' => true,
            'message' => 'tarea actualizada correctamente'
        ],200);
    }
    public function destroy(Tarea $tarea)
    {
        $tarea->delete();
        return response()->json([
            'status' => true,
            'message' => 'tarea eliminada correctamente'
        ],200);
    }
}
