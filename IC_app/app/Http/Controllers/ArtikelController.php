<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;

class ArtikelController extends Controller
{

    public function index()
    {
        $data = Artikel::all();
        return view('artikel/artikel', compact('data'));
    }

    public function store(Request $request)
    {
        $artikel = new Artikel;
        $artikel->judul_artikel = $request->input('judul_artikel');
        $artikel->isi_artikel = $request->input('isi_artikel');
        $artikel->kategori_artikel = $request->input('kategori_artikel');
        $artikel->tgl_artikel = $request->input('tgl_artikel');

        if ($request->hasFile('gambar_artikel')) {
            $artikel->gambar_artikel = $request->file('gambar_artikel');
            $extension = $artikel->gambar_artikel->getClientOriginalName();
            $fotoName = $extension;
            $artikel->gambar_artikel->move(storage_path('app/public/artikel', $request->file('gambar_artikel')->getClientOriginalName()), $fotoName);
            $artikel->gambar_artikel = $request->file('gambar_artikel')->getClientOriginalName();
        }

        $artikel->save();
        return redirect()->route('artikel')->with('success', 'Data berhasil di Tambah');
    }

    public function edit($id)
    {
        $data = Artikel::find($id);
        return view('artikel/edit_artikel', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $artikel = Artikel::find($id);
        $artikel->judul_artikel = $request->input('judul_artikel');
        $artikel->isi_artikel = $request->input('isi_artikel');
        $artikel->kategori_artikel = $request->input('kategori_artikel');
        $artikel->tgl_artikel = $request->input('tgl_artikel');

        if ($request->hasFile('gambar_artikel')) {
            $artikel->gambar_artikel = $request->file('gambar_artikel');
            $extension = $artikel->gambar_artikel->getClientOriginalName();
            $fotoName = $extension;
            $artikel->gambar_artikel->move(storage_path('app/public/artikel', $request->file('gambar_artikel')->getClientOriginalName()), $fotoName);
            $artikel->gambar_artikel = $request->file('gambar_artikel')->getClientOriginalName();
        }

        $artikel->update();
        return redirect()->route('artikel')->with('success', 'Data berhasil di Update');
    }

    public function destroy($id)
    {
        $artikel = Artikel::where('id', $id)->first();
        $file_path = $artikel->gambar_artikel;
        if (file_exists(storage_path('app/public/artikel' . $file_path))) {
            unlink(storage_path('app/public/artikel' . $file_path));
        }
        $artikel->delete();
        return redirect()->route('artikel')->with('success', 'Data berhasil di Update');
    }
}
