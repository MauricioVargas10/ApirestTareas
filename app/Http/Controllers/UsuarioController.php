<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use App\Models\Tarea;
use DB;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    public function index()
    {
        $usuarios = Usuario::select('usuarios.*','tareas.name as tarea')
        ->join('tareas', 'tareas.id', '=', 'usuarios.tarea_id')
        ->paginate(10);
        return response()->json($usuarios);
    }

    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|string|min:1|max:100',
            'email' => 'required|email|max:80',
            'phone' => 'required|max:15',
            'tarea_id' => 'required|numeric'
        ];
        $validator = \Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()->all()
            ],400);
        }
        $usuario = new Usuario($request->input());
        $usuario->save();
        return response()->json([
            'status' => true,
            'message' => 'empleado creado correctamente'
        ],200);
    }

    public function show(Usuario $usuario)
    {
        return response()->json(['status' => true, 'data' => $usuario]);
    }

    public function update(Request $request, Usuario $usuario)
    {
        $rules = [
            'name' => 'required|string|min:1|max:100',
            'email' => 'required|email|max:80',
            'phone' => 'required|max:15',
            'tarea_id' => 'required|numeric'
        ];
        $validator = \Validator::make($request->input(),$rules);
        if($validator->fails()){
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()->all()
            ],400);
        }
        $usuario->update($request->input());
        return response()->json([
            'status' => true,
            'message' => 'empleado actualizado correctamente'
        ],200);
    }

    public function destroy(Usuario $usuario)
    {
        $usuario->delete();
        return response()->json([
            'status' => true,
            'message' => 'empleado eliminado correctamente'
        ],200);
    }

    public function UsuariosByTarea()
    {
        $usuarios = Usuario::select(DB::raw('count(usuarios.id) as count, tareas.name'))
        ->rightjoin('tareas', 'tareas.id', '=', 'usuarios.tarea_id')
        ->groupBy('tareas.name')->get();
        return response()->json($usuarios);
    }

    public function all()
    {
        $usuarios = Usuario::select('usuarios.*','tareas.name as tarea')
        ->join('tareas', 'tareas.id', '=', 'usuarios.tarea_id')
        ->get();
        return response()->json($usuarios);
}
}