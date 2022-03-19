<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
use Iluminate\Http\Response;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $tasks = Task::all();
        return \response($tasks);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'domitorios' => 'required|min:0',
            'baños' => 'required|min:0',
            'superficie' => 'required|min:1'
            'tipo de negocio' => 'required',
            'precio' => 'required',
        ]);

        $task = Task::create($request->all());
        return \response($task);
        /* 
        return \response($task, Response::HTTP_CREATED); */
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $task = Task::findOrFail($id);
         return \response($task);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $task = Task::findOrFail($id)
        ->update($request->all());
        return \response("Tarea ".$task." Actualizada");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        Task::destroy($id);
        return \response("La tarea con el id: ${id} ha sido eliminada");
    }
}
