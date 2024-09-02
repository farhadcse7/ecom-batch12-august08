<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    private $data = [], $orders;

    public function index()
    {
        //return $this->orders;
        return view('admin.home.index', [
            'total_today_order' => count(Order::where('order_date', date('Y-m-d'))->get()),
            'total_customer'    => count(Customer::all())
        ]);
    }
}
