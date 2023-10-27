<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    //
    public function register(Request $request)
    {
        $rules = [
            'name' => 'required|string',
            'email'=> 'required|string|unique:users',
            'password'=> 'required|string|min:6',
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()){
            return response()->json($validator->errors(),400);
        
        }
        $user = User::create([
            'name'=> $request->name,
            'email'=> $request->email,
            'password'=>Hash::make($request->password)
            ]);
            $token = $user->createToken('Personal Access Token')->plainTextToken;
            $response = ['user'=> $user,'token'=> $token];
            return response()->json($response,200);
    }
    public function login(Request $request)
    {
        $rules = [
            'email'=> 'required',
            'password'=> 'required|string',
        ];
        $request->validate($rules);

        $user = User::where('email', $request->email)->first();
        if ($user && Hash::check($request->password, $user->password)) 
        {
            $token = $user->createToken('Personal Access')->plainTextToken;
            $response = ['user'=> $user,'token'=> $token];
            return response()->json($response,200);
        }
        $response = ['message'=>'Email atau Password salah'];
        return response()->json($response,400);
    }
}
