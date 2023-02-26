<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function register(Request $request)
    {
        // validation
        $rules = [
            'name' => ['required','string','max:255'],
            'email' => ['required','string','email','max:255','unique:users'],
            'password' => ['required'],
        ];

        $data = $request->all();

        $validator = Validator::make($data,$rules);

        // check validation
        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }

        // create user
        $data['password'] = Hash::make($request->password);
        User::create($data);

        // check user
        $user = User::where('email',$request->email)->first();

        // get token
        $tokenResult = $user->createToken('authToken')->plainTextToken;

        return response()->json([
            'status' => 'success',
            'data' => [
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user
            ]
        ]);
    }

    public function login(Request $request){
        // validation
        $rules = [
            'email' => ['required'],
            'password' => ['required'],
        ];

        $data = $request->all();

        $validator = Validator::make($data,$rules);

        // check validation
        if($validator->fails()){
            return response()->json([
                'status' => 'error',
                'message' => $validator->errors()
            ],400);
        }

        // check login
        $credential = request(['email','password']);
        if(!Auth::attempt($credential)){
            return response()->json([
                'status' => 'error',
                'message' => 'Unauthorized'
            ],500);
        }

        // hash invalid
        $user = User::where('email',$request->email)->first();
        if(!Hash::check($request->password,$user->password,[])){
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid Credentials'
            ],500);
        }

        // get token
        $tokenResult = $user->createToken('authToken')->plainTextToken;

        // response success
        return response()->json([
            'status' => 'success',
            'data' => [
                'access_token' => $tokenResult,
                'token_type' => 'Bearer',
                'user' => $user
            ]
        ]);
    }

    public function fetch(Request $request)
    {
        return response()->json([
            'status' => 'success',
            'message' => $request->user()
        ],400);
    }
}
