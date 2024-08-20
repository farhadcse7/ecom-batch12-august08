@extends('admin.master')

@section('body')

    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Admin Order Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Category</a></li>
                <li class="breadcrumb-item active" aria-current="page">Order Detail Information</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->

    <!-- Row -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <h1>Order Detail Information</h1>
            <div class="card">
                <table class="table table-bordered table-striped table-hover">
                    <tr>
                        <th>Order ID</th>
                        <td>{{$order->id}}</td>
                    </tr>
                    <tr>
                        <th>Order Date</th>
                        <td>{{$order->order_date}}</td>
                    </tr>
                    <tr>
                        <th>Order Total</th>
                        <td>{{$order->order_total}}</td>
                    </tr>
                    <tr>
                        <th>Tax Amount</th>
                        <td>{{$order->tax_amount}}</td>
                    </tr>
                    <tr>
                        <th>Shipping Amount</th>
                        <td>{{$order->shipping_amount}}</td>
                    </tr>
                    <tr>
                        <th>Order Status</th>
                        <td>{{$order->order_status}}</td>
                    </tr>
                    <tr>
                        <th>Delivery Address</th>
                        <td>{{$order->delivery_address}}</td>
                    </tr>
                    <tr>
                        <th>Delivery Date</th>
                        <td>{{$order->delivery_date}}</td>
                    </tr>
                    <tr>
                        <th>Delivery Status</th>
                        <td>{{$order->delivery_status}}</td>
                    </tr>
                    <tr>
                        <th>Payment Method</th>
                        <td>{{$order->payment_method}}</td>
                    </tr>
                    <tr>
                        <th>Payment Amount</th>
                        <td>{{$order->payment_amount}}</td>
                    </tr>
                    <tr>
                        <th>Payment Date</th>
                        <td>{{$order->payment_date}}</td>
                    </tr>
                    <tr>
                        <th>Payment Status</th>
                        <td>{{$order->payment_status}}</td>
                    </tr>
                    <tr>
                        <th>Transaction ID</th>
                        <td>{{$order->transaction_id}}</td>
                    </tr>
                    <tr>
                        <th>Currency</th>
                        <td>{{$order->currency}}</td>
                    </tr>
                </table>
                <div class="card-header border-bottom">
                    <h3 class="card-title">Order Product Info</h3>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered text-nowrap border-bottom" id="basic-datatable">
                            <thead>
                            <tr>
                                <th class="wd-15p border-bottom-0">SL NO</th>
                                <th class="wd-15p border-bottom-0">Product Name</th>
                                <th class="wd-15p border-bottom-0">Product Price</th>
                                <th class="wd-20p border-bottom-0">Product Quantity</th>
                                <th class="wd-15p border-bottom-0">Total Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($order->products as $product)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$product->product_name}}</td>
                                    <td>{{$product->product_price}}</td>
                                    <td>{{$product->product_qty}}</td>
                                    <td>{{$product->product_qty * $product->product_price}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->


@endsection


