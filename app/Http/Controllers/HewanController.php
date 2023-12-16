<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreHewanRequest;
use App\Http\Requests\UpdateHewanRequest;
use App\Http\Resources\HewanCollection;
use App\Http\Resources\HewanResource;
use App\Models\Hewan;
use Exception;
use Illuminate\Http\Request;

class HewanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $queryData = Hewan::all();
            $formattedDatas = new HewanCollection($queryData);
            return response()->json([
                "message" => "success",
                "data" => $formattedDatas
            ], 200);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 400);
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreHewanRequest $request)
    {
        $validatedRequest = $request->validated();
        try {
            $queryData = Hewan::create($validatedRequest);
            $formattedDatas = new HewanResource($queryData);
            return response()->json([
                "message" => "success",
                "data" => $formattedDatas
            ], 200);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 400);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        try {
            $queryData = Hewan::findOrFail($id);
            $formattedDatas = new HewanResource($queryData);
            return response()->json([
                "message" => "success",
                "data" => $formattedDatas
            ], 200);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 400);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateHewanRequest $request, string $id)
    {
        $validatedRequest = $request->validated();
        try {
            $queryData = Hewan::findOrfail($id);
            $queryData->update($validatedRequest);
            $queryData->save();
            $formattedDatas = new HewanResource($queryData);
            return response()->json([
                "message" => "success",
                "data" => $formattedDatas
            ], 200);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 400);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $queryData = Hewan::findOrFail($id);
            $queryData->delete();
            $formattedDatas = new HewanResource($queryData);
            return response()->json([
                "message" => "success",
                "data" => $formattedDatas
            ], 200);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 400);
        }
    }
}
