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
                    <form class="form-horizontal" action="{{route('courier.update', $courier->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row mb-4">
                            <label for="categoryName" class="col-md-3 form-label">Courier Name</label>
                            <div class="col-md-9">
                                <input class="form-control" name="name" value="{{$courier->id}}" id="categoryName" placeholder="Courier Name" type="text">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="email" class="col-md-3 form-label">Courier Email</label>
                            <div class="col-md-9">
                                <input class="form-control" name="email" value="{{$courier->email}}" id="email" placeholder="Courier Email" type="email">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="mobile" class="col-md-3 form-label">Courier Mobile</label>
                            <div class="col-md-9">
                                <input class="form-control" name="mobile" value="{{$courier->mobile}}" id="mobile" placeholder="Courier Mobile" type="number">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="address" class="col-md-3 form-label">Courier Address</label>
                            <div class="col-md-9">
                                <textarea class="form-control" name="address" id="address" placeholder="Courier Address">{{$courier->address}}</textarea>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label for="image" class="col-md-3 form-label">Courier Logo</label>
                            <div class="col-md-9">
                                <input class="form-control" name="logo" id="image" type="file"/>
                                <img src="{{asset($courier->logo)}}" alt="" height="100">
                            </div>
                        </div>
                        <div class="row mb-4">
                            <label class="col-md-3 form-label">Publication Status</label>
                            <div class="col-md-9">
                                <label><input name="status" {{$courier->status == 1 ? 'checked':''}} type="radio" checked value="1"/>Published</label>
                                <label><input name="status" {{$courier->status == 0 ? 'checked':''}} type="radio" value="0"/>Unpublished</label>
                            </div>
                        </div>
                        <button class="btn btn-primary" type="submit">Update Courier Info</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection

