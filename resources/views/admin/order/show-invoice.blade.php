@extends('admin.master')

@section('body')

{{--    style--}}
<style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }

    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }

    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }

    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }

    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }

    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }

    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }

    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.item td {
        border-bottom: 1px solid #eee;
    }

    .invoice-box table tr.item.last td {
        border-bottom: none;
    }

    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }

        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }

    /** RTL **/
    .invoice-box.rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }

    .invoice-box.rtl table {
        text-align: right;
    }

    .invoice-box.rtl table tr td:nth-child(2) {
        text-align: left;
    }
</style>

<!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Admin Order Module</h1>
        </div>
        <div class="ms-auto pageheader-btn">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0);">Admin Order</a></li>
                <li class="breadcrumb-item active" aria-current="page">Show Invoice</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->

    <!-- Row -->
    <div class="row row-sm">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header border-bottom">
                    <h3 class="card-title">Order Invoice</h3>
                </div>
                <div class="card-body">
                    <div class="invoice-box">
                        <table cellpadding="0" cellspacing="0">
                            <tr class="top">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td class="title">
                                                <img
                                                    src="{{asset('/')}}website/assets/images/logo/logo.svg" style="width: 100%; max-width: 300px"
                                                />
                                            </td>

                                            <td>
                                                Invoice #: {{$order->id}}<br />
                                                Order Date: {{$order->order_date}}<br />
                                                Invoice Date: {{date('Y-m-d')}}
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="information">
                                <td colspan="4">
                                    <table>
                                        <tr>
                                            <td>
                                                <h3>Delivery Address</h3>
                                                {{$order->customer->name}}<br />
                                                {{$order->customer->email}}<br />
                                                {{$order->customer->mobile}}<br />
                                                {{$order->delivery_address}}
                                            </td>

                                            <td>
                                                <h3>Company Info</h3>
                                                Shopgrid Corp.<br />
                                                John Doe<br />
                                                017464587461<br />
                                                john@shopgrid.com
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr class="heading">
                                <td>Item</td>
                                <td style="text-align: center">Unit Price</td>
                                <td style="text-align: center">Quantity</td>
                                <td style="text-align: right">Total Price</td>
                            </tr>
                            @php($sum=0)
                            @foreach($order->products as $product)
                            <tr class="item">
                                <td>{{$product->product_name}}</td>
                                <td style="text-align: center">{{$product->product_price}}</td>
                                <td style="text-align: center">{{$product->product_qty}}</td>
                                <td style="text-align: right">{{$product->product_price * $product->product_qty }}</td>
                            </tr>
                                @php($sum=$sum + ($product->product_price * $product->product_qty))
                            @endforeach
                            <tr class="total">
                                <td colspan="3"></td>
                                <td>Total: TK. {{$sum}}</td>
                            </tr>
                            <tr class="total">
                                <td colspan="3"></td>
                                <td>Tax Amount (15%): TK. {{$order->tax_amount}}</td>
                            </tr>
                            <tr class="total">
                                <td colspan="3"></td>
                                <td>Shipping Amount: TK. {{$order->shipping_amount}}</td>
                            </tr>
                            <tr class="total">
                                <td colspan="3"></td>
                                <td>Total Payable: TK. {{$order->order_total}}</td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Row -->


@endsection

