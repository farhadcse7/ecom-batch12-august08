<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function index()
    {
        return view('admin.sub-category.index', ['sub_categories'=>SubCategory::all()]);
    }

    public function create()
    {
//        return view('admin.sub-category.create',['categories'=>Category::all()]);
//        return view('admin.sub-category.create',['categories'=>Category::where('status',1)->get()]);
        return view('admin.sub-category.create',[
            'categories'=>Category::where('status',1)->orderBy('id','desc')->get()
//            'categories'=>Category::all()
        ]);
    }

    public function store(Request $request){
        SubCategory::newSubCategory($request);
        return back()->with('message', 'Create Sub Category Successfully');
    }

    public function edit($id){
        return view('admin.sub-category.edit',[
            'sub_category'=>SubCategory::find($id),
            'categories'=>Category::where('status',1)->get()
        ]);
    }

    public function update(Request $request, $id)
    {
        SubCategory::updateSubCategory($request, $id);
        return redirect('/sub-category')->with('message', 'Sub Category Info updated successfully');
    }

    public function destroy($id)
    {
        SubCategory::deleteSubCategory($id);
        return back()->with('message', 'Sub Category info delete successfully');
    }
}
