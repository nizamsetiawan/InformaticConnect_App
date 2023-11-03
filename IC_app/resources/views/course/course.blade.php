<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Course') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            
                
                <div class="container mt-2">
                    <a href="create_course" class="btn btn-success mb-2">Buat Course</a>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Judul</th>
                                <th>Isi</th>
                                <th>Kategori</th>
                                <th>Tanggal</th>
                                <th>Link Video</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            @foreach ($data as $item)
                            <tr>
                                <td>{{ $i }}</td>
                                <td>{{ $item->judul_course }}</td>
                                <td>{{ $item->isi_course }}</td>
                                <td>{{ $item->kategori_course }}</td>
                                <td>{{ $item->tgl_course }}</td>
                                <td>{{ $item->link_course }}</td>
                                <td>
                                    <a href="course/edit_course/{{ $item->id }}" class="btn btn-primary">
                                        Update
                                    </a>
                                    <a href="/delete_course/{{ $item->id }}" class="btn btn-danger">
                                        Delete
                                    </a>
                                </td>
                            </tr>
                            <?php $i++ ?>
                            @endforeach
                        </tbody>
                    </table>
                </div>

            
        </div>
    </div>
</x-app-layout>
