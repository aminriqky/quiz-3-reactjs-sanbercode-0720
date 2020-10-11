<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\People;

class AuthController extends Controller
{
    public function login()
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string'
        ]);

        $credentials = request(['email', 'password']);
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);

        $user = $request->user();
        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;

        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        $token->save();

        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }

    public function store(Request $request)
    {
        // ini untuk validasi datanyo
        $validatedData = $request->validate([
          'nama' => 'required',
          'email' => 'required',
          'password' => 'required'
        ]);
 
        // ini untuk meng input data ke db
        $project = \App\People::create([
          'nama' => $validatedData['nama'],
          'email' => $validatedData['content'],
          'password' => bcrypt($validatedData['password'])
        ]);
 
        $msg = [
            'success' => true,
            'message' => 'Akun berhasil di buat!'
        ];
 
        return response()->json($msg);
    }

    public function getUser($id) // for edit and show
    {
        $people = \App\People::find($id);
 
        return response()->json($people);
    }

    public function update(Request $request, $id)
    {
        // validasi data
        $validatedData = $request->validate([
          'nama' => 'required',
          'password' => 'required'
        ]);
 
        // find data dengan id tertentu
        $people = \App\People::find($id);
        $people->nama = $validatedData['nama'];
        $people->password = $validatedData['password'];

        // simpan data nya di db
        $people->save();
 
        $msg = [
            'success' => true,
            'message' => 'Data telah berhasil di perbarui'
        ];
 
        return response()->json($msg);
    }
}
