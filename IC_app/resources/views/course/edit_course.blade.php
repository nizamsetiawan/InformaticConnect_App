<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Course') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            

                <form action="/update_course/{{ $data->id }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Judul</label>
                      <input type="text" class="form-control" id="judul_course" name="judul_course" value="{{ $data->judul_course }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Isi</label>
                        <input type="text" class="form-control" id="isi_course" name="isi_course" value="{{ $data->isi_course }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Kategori</label>
                        <select name="kategori_course" id="kategori_course" class="form-control">
                            <option selected>{{ $data->kategori_course }}</option>
                            <option value="Website">Website</option>
                            <option value="Mobile">Mobile</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tanggal</label>
                        <input type="date" class="form-control" id="tgl_course" name="tgl_course" value="{{ $data->tgl_course }}" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Link Youtube</label>
                        <input type="text" class="form-control" id="link_course" name="link_course" value="{{ $data->link_course }}" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            
        </div>
    </div>
</x-app-layout>

<!-- <x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Artikel') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <form action="/update_artikel/{{ $data->id }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Judul</label>
                    <input type="text" class="form-control" id="judul_artikel" name="judul_artikel" value="{{ $data->judul_artikel }}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Isi</label>
                    <input type="text" class="form-control" id="isi_artikel" name="isi_artikel" value="{{ $data->isi_artikel }}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Kategori</label>
                    <select name="kategori_artikel" id="kategori_artikel" class="form-control">
                        <option selected>{{ $data->kategori_artikel }}</option>
                        <option value="Website">Website</option>
                        <option value="Mobile">Mobile</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Tanggal</label>
                    <input type="date" class="form-control" id="tgl_artikel" name="tgl_artikel" value="{{ $data->tgl_artikel }}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Gambar</label>
                    <img src="{{ asset('storage/artikel/'.$data->gambar_artikel) }}" alt="" style="width: 150px;">
                    <br>
                    <input type="file" class="form-control" id="gambar_artikel" name="gambar_artikel" value="{{ $data->judul_artikel }}" required>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</x-app-layout> -->
