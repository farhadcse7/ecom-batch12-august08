@extends('admin.master')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Category Update Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Category</a></li>
                <li class="breadcrumb-item active" aria-current="page">Update Category</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header border-bottom">
                <h3 class="card-title">Update Category Form</h3>
            </div>
            <div class="card-body">
                <p class="text-muted">{{session('message')}}</p>
                <form class="form-horizontal" action="{{route('category.update',['id'=>$category->id])}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="row mb-4">
                        <label for="categoryName" class="col-md-3 form-label">Category Name</label>
                        <div class="col-md-9">
                            <input class="form-control" name="name" value="{{$category->name}}" id="categoryName" placeholder="Category Name" type="text">
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="description" class="col-md-3 form-label">Category Description</label>
                        <div class="col-md-9">
                            <textarea class="form-control" name="description" id="description" placeholder="Category Description">{{$category->description}}</textarea>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label for="image" class="col-md-3 form-label">Category Image</label>
                        <div class="col-md-9">
                            <input class="form-control" name="image" id="image" type="file"/>
                            <img src="{{asset($category->image)}}" alt="" height="100">
                        </div>
                    </div>
                    <div class="row mb-4">
                        <label class="col-md-3 form-label">Publication Status</label>
                        <div class="col-md-9">
                            <label><input name="status" type="radio" {{$category->status==1 ? 'checked': ''}} value="1"/>Published</label>
                            <label><input name="status" type="radio" {{$category->status==0 ? 'checked': ''}} value="0"/>Unpublished</label>
                        </div>
                    </div>
                    <button class="btn btn-primary" type="submit">Update Category Info</button>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection

