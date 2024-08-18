@extends('website.master')

@section('title')
    Checkout Page
@endsection

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">checkout</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <h4 class="text-center">You have to login to start your checkout process. If you are not register
                        then please register first.</h4>
                </div>

                <div class="account-login section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <form class="card login-form" action="{{route('customer.login')}}" method="post">
                                    @csrf
                                    <div class="card-body">
                                        <div class="title">
                                            <h3>Login Now</h3>
                                            <p>{{session('message')}}</p>
                                        </div>

                                        <div class="form-group input-group">
                                            <label for="reg-fn">Email</label>
                                            <input class="form-control" name="email" type="email" id="reg-email"
                                                   required>
                                        </div>
                                        <div class="form-group input-group">
                                            <label for="reg-fn">Password</label>
                                            <input class="form-control" name="password" type="password" id="reg-pass"
                                                   required>
                                        </div>
                                        <div class="d-flex flex-wrap justify-content-between bottom-content">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input width-auto"
                                                       id="exampleCheck1">
                                                <label class="form-check-label">Remember me</label>
                                            </div>
                                            <a class="lost-pass" href="account-password-recovery.html">Forgot
                                                password?</a>
                                        </div>
                                        <div class="button">
                                            <button class="btn" type="submit">Login</button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <form class="card login-form" action="{{route('customer.store')}}" method="post">
                                    @csrf
                                    <div class="card-body">
                                        <div class="title">
                                            <h3>Register Now</h3>
                                            <p></p>
                                        </div>

                                        <div class="form-group input-group">
                                            <label for="reg-name">Full Name</label>
                                            <input class="form-control" name="name" type="text" id="reg-name" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <label for="reg-email">Email</label>
                                            <input class="form-control" name="email" type="email" id="reg-email"
                                                   required>
                                        </div>
                                        <div class="form-group input-group">
                                            <label for="reg-pass">Password</label>
                                            <input class="form-control" name="password" type="password" id="reg-pass"
                                                   required>
                                        </div>
                                        <div class="form-group input-group">
                                            <label for="reg-mobile">Mobile</label>
                                            <input class="form-control" name="mobile" type="number" id="reg-mobile"
                                                   required>
                                        </div>

                                        <div class="button">
                                            <button class="btn" type="submit">Register</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
