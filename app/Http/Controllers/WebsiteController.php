<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index()
    {
        //helper method
//        demo();
//        exit();
        //return demo();

        return view('website.home.index', [
            'products' => Product::latest()->take(8)->get(),
//            'categories' => Category::all(),
        ]);
    }

    public function category($id)
    {
        return view('website.category.index', [
//                'categories' => Category::all(),
                'products' => Product::where('category_id', $id)->latest()->get(),
            ]
        );
    }

    public function subCategory($id)
    {
        return view('website.category.index', [
//                'categories' => Category::all(),
                'products' => Product::where('sub_category_id', $id)->latest()->get(),
            ]
        );
    }

    public function product($id)
    {
        return view('website.product.index',
            [
//                'categories' => Category::all(),
                'product' => Product::find($id)
            ]);
    }
}
