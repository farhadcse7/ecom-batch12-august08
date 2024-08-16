<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Cart;

class CartController extends Controller
{
    private $product;

    public function index()
    {
//        return Cart::content();
        return view('website.cart.index', ['cart_products' => Cart::content()]);
    }

    public function add(Request $request, $id)
    {
//        return $request;
        $this->product = Product::find($id);
        Cart::add([
            'id' => $id,
            'name' => $this->product->name,
            'qty' => $request->qty,
            'price' => $this->product->selling_price,
            'weight' => 0,
            'options' => [
                'image' => $this->product->image,
                'code' => $this->product->code,
            ]
        ]);

        return redirect()->route('cart.show')->with('message', 'Cart product info add successfully');
    }

    public function remove($rowId)
    {
        Cart::remove($rowId);
        return redirect()->route('cart.show')->with('message', 'Cart product info remove successfully');
    }

    public function update(Request $request, $rowId)
    {
        Cart::update($rowId, $request->qty);
        return redirect()->route('cart.show')->with('message', 'Cart product info update successfully');
    }

}
