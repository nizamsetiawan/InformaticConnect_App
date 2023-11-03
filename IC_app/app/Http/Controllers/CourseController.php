<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Support\Facades\File;
use Illuminate\Http\Request;

class CourseController extends Controller
{

    public function index()
    {
        $data = Course::all();
        return view('course/course', compact('data'));
    }

    public function store(Request $request)
    {
        $course = new Course;
        $course->judul_course = $request->input('judul_course');
        $course->isi_course = $request->input('isi_course');
        $course->kategori_course = $request->input('kategori_course');
        $course->tgl_course = $request->input('tgl_course');
        $course->link_course = $request->input('link_course');
        $course->save();
        return redirect()->route('course')->with('success', 'Data berhasil di Tambah');
    }

    public function edit($id)
    {
        $data = Course::find($id);
        return view('course/edit_course', compact('data'));
    }

    public function update(Request $request, $id)
    {
        $course = Course::find($id);
        $course->judul_course = $request->input('judul_course');
        $course->isi_course = $request->input('isi_course');
        $course->kategori_course = $request->input('kategori_course');
        $course->tgl_course = $request->input('tgl_course');
        $course->link_course = $request->input('link_course');
        $course->update();
        return redirect()->route('course')->with('success', 'Data berhasil di Update');
    }

    public function destroy($id)
    {
        $course = Course::where('id', $id)->first();
        $course->delete();
        return redirect()->route('course')->with('success', 'Data berhasil di Update');
    }
}
