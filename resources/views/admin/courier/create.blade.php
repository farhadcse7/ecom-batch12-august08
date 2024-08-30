@extends('admin.master')

@section('body')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Courier Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Courier</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Courier</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Create Courier Form</h3>
                </div>
                <div class="card-body">
                    <p class="text-muted">{{session('message')}}</p>
                    <form class="form-horizontal" action="{{route('courier.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row mb-4">
                            <label for="categoryName" class="col-md-3 form-label">Courier Name</label>
                            <div class="col-md-9">
                                <input class="form-control" name="name" id="categoryName" placeholder="Courier Name" type="text">
                                <span class="text-danger">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="email" class="col-md-3 form-label">Courier Email</label>
                            <div class="col-md-9">
                                <input class="form-control" name="email" id="email" placeholder="Courier Email" type="email">
                                <span class="text-danger">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="mobile" class="col-md-3 form-label">Courier Mobile</label>
                            <div class="col-md-9">
                                <input class="form-control" name="mobile" id="mobile" placeholder="Courier Mobile" type="number">
                                <span class="text-danger">{{$errors->has('mobile') ? $errors->first('mobile') : ''}}</span>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="address" class="col-md-3 form-label">Courier Address</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="address" id="address" placeholder="Courier Address"></textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="image" class="col-md-3 form-label">Courier Logo</label>
                            <div class="col-md-9">
                                <input class="form-control" name="logo" id="image" type="file"/>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label><input name="status" type="radio" checked value="1"/>Published</label>
                                <label><input name="status" type="radio" value="0"/>Unpublished</label>
                            </div>
                        </div>
                        <button class="btn btn-primary" type="submit">Create New Courier</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection

