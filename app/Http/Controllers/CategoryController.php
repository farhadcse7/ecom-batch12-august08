<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        return view('admin.category.index', ['categories' => Category::all()]);
    }

    public function create()
    {
        return view('admin.category.create');
    }

    public function store(Request $request)
    {
        Category::newCategory($request);
        return back()->with('message', 'Category Info created successfully');
    }

    public function edit($id)
    {
        return view('admin.category.edit', ['category' => Category::find($id)]);
    }

    public function update(Request $request, $id)
    {
        Category::updateCategory($request, $id);
        return redirect('/category')->with('message', 'Category Info updated successfully');
    }

    public function destroy($id)
    {
        Category::deleteCategory($id);
        return back()->with('message', 'Category info delete successfully');
    }

}
