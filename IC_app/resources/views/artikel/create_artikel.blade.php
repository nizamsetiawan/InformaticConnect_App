<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Create Artikel') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            

                <form action="/store_artikel" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Judul</label>
                      <input type="text" class="form-control" id="judul_artikel" name="judul_artikel" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Isi</label>
                        <input type="text" class="form-control" id="isi_artikel" name="isi_artikel" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Kategori</label>
                        <select name="kategori_artikel" id="kategori_artikel" class="form-control">
                            <option value="Website">Website</option>
                            <option value="Mobile">Mobile</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Tanggal</label>
                        <input type="date" class="form-control" id="tgl_artikel" name="tgl_artikel" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Gambar</label>
                        <input type="file" class="form-control" id="gambar_artikel" name="gambar_artikel" aria-describedby="emailHelp">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            
        </div>
    </div>
</x-app-layout>
