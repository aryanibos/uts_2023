<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{

    // Menampilkan semua data dari tabel news
    public function index()
    {
        // Mengambil semua data dari tabel news
        $news = News::all();

        // Jika data ada maka tampilkan response 200 OK beserta data nya
        if ($news) {
            $data = [
                'message' => 'Get All Resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
            // Jika data tidak ada maka tampilkan response 404 Not Found
        } else {
            $data = [
                'message' => 'Data is Empty',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Menambahkan data ke tabel news
    public function store(Request $request)
    {
        // Menambahkan data ke tabel news dan melakukan validasi terhadap data yang kita diinputkan
        $news = News::create($request->all() ?? News::all());

        $data = [
            'message' => 'Resource is added successfully',
            'data' => $news
        ];

        // mengembalikan response berupa json
        return response()->json($data, 201);
    }


    // Menampilkan data berdasarkan id
    public function show(News $news, $id)
    {
        // Mengambil atau Mencari data berdasarkan id
        $news = News::find($id);

        if ($news) {
            $data = [
                'message' => 'Get Detail Resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource Not Found',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Mengubah data berdasarkan id
    public function update(Request $request, $id)
    {
        // Mengambil atau Mencari data berdasarkan id
        $news = News::find($id);

        if ($news) {
            // Mengubah data berdasarkan id dan melakukan validasi terhadap data yang kita diinputkan
            $news->update($request->all() ?? $news->all());

            // Menampilkan response 200 OK beserta data yang telah diubah
            $data = [
                'message' => 'Resource is updated successfully',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource Not Found',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    public function destroy($id)
    {
        // Mengambil atau Mencari data berdasarkan id
        $news = News::find($id);

        if ($news) {
            $news::destroy($id);

            $data = [
                'message' => 'Resource is deleted successfully',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Resource Not Found',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Mencari data berdasarkan title atu judul berita
    public function search($title)
    {
        // Mengambil atau Mencari data berdasarkan title atau judul berita
        $news = News::where('title', 'like', '%' . $title . '%')->get();

        if ($news) {
            $data = [
                'message' => 'Get searched resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Data is Empty',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Menampilkan data berdasarkan category sport
    public function sport()
    {
        // Mengambil atau Mencari data berdasarkan category sport
        $news = News::where('category', 'like', '%' . 'sport' . '%')->get();

        if ($news) {
            $data = [
                'message' => 'Get sport resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Data is Empty',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Menampilkan data berdasarkan category finance
    public function finance()
    {
        // Mengambil atau Mencari data berdasarkan category finance
        $news = News::where('category', 'like', '%' . 'finance' . '%')->get();

        if ($news) {
            $data = [
                'message' => 'Get finance resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Data is Empty',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }

    // Menampilkan data berdasarkan category automotive
    public function automotive()
    {
        // Mengambil atau Mencari data berdasarkan category automotive
        $news = News::where('category', 'like', '%' . 'automotive' . '%')->get();

        if ($news) {
            $data = [
                'message' => 'Get automotive resource',
                'data' => $news
            ];
            // mengembalikan response berupa json
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => 'Data is Empty',
            ];
            // mengembalikan response berupa json
            return response()->json($data, 404);
        }
    }
}
