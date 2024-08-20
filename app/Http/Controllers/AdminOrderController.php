<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class AdminOrderController extends Controller
{
    private $order;

    public function index()
    {
        return view('admin.order.index', ['orders'=>Order::latest()->get()]);
    }

    public function detail($id)
    {
        return view('admin.order.detail', ['order'=>Order::find($id)]);
    }

    public function edit($id)
    {
        return view('admin.order.edit', ['order'=>Order::find($id)]);
    }

    public function update(Request $request, $id)
    {
        return $request;
    }

    public function showInvoice($id)
    {
        return view('admin.order.show-invoice');
    }

    public function downloadInvoice($id)
    {
        return view('admin.order.download-invoice');
    }
    public function destroy($id)
    {
        return $id;
    }
}
