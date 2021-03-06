<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Snippet - BBBootstrap</title>
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
    <link href="assets/css/shoppingcart.css" rel="stylesheet">
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript'>$(document).ready(function(){

        $('.radio-group .radio').click(function(){
            $('.radio').addClass('gray');
            $(this).removeClass('gray');
        });

        $('.plus-minus .plus').click(function(){
            var count = $(this).parent().prev().text();
            $(this).parent().prev().html(Number(count) + 1);
        });

        $('.plus-minus .minus').click(function(){
            var count = $(this).parent().prev().text();
            $(this).parent().prev().html(Number(count) - 1);
        });

    });</script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
<nav class="navb navbar navbar-expand-lg fixed-top" >
    <div class="container">
        <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="search">
            <input type="text" placeholder="Tìm kiếm">
            <button>
                Tìm kiếm
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navmenu navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html"><img src="images/home.png" alt="">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#"><img src="images/customer.png" alt="">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="shoppingcart.html"><img src="images/shopping-cart.png" alt="">   Giỏ hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.html"><img src="images/enter.png" alt="">  Đăng nhập</a>

                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container px-4 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-5">
            <h4 class="heading" >Shopping Bag</h4>
        </div>
        <div class=" col-7">
            <div class="header row text-right">
                <div class="col-4">
                    <h6 class="mt-2">Format</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">Quantity</h6>
                </div>
                <div class="col-4">
                    <h6 class="mt-2">Price</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center border-top">
        <div class="col-5">
            <div class="row d-flex">
                <div class="book"> <img src="https://i.imgur.com/2DsA49b.jpg" class="book-img"> </div>
                <div class="my-auto flex-column d-flex pad-left">
                    <h6 class="mob-text">Thinking, Fast and Slow</h6>
                    <p class="mob-text">Daniel Kahneman</p>
                </div>
            </div>
        </div>
        <div class="my-auto col-7">
            <div class="row text-right">
                <div class="col-4">
                    <p class="mob-text">Digital</p>
                </div>
                <div class="col-4">
                    <div class="row d-flex justify-content-end px-3">
                        <h5 class="mb-0" id="cnt1">1</h5>
                        <div class="d-flex flex-column plus-minus"> <h5 class="vsm-text plus">+</h5> <h5 class="vsm-text minus">-</h5> </div>
                    </div>
                </div>
                <div class="col-4">
                    <h6 class="mob-text">$9.99</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-center border-top">
        <div class="col-5">
            <div class="row d-flex">
                <div class="book"> <img src="https://i.imgur.com/Oj1iQUX.jpg" class="book-img"> </div>
                <div class="my-auto flex-column d-flex pad-left">
                    <h6 class="mob-text">Homo Deus: A Brief<br>History of Tomorrow</h6>
                    <p class="mob-text">Yuval Noah Harari</p>
                </div>
            </div>
        </div>
        <div class="my-auto col-7">
            <div class="row text-right">
                <div class="col-4">
                    <p class="mob-text">Paperback</p>
                </div>
                <div class="col-4">
                    <div class="row d-flex justify-content-end px-3">
                        <h5 class="mb-0" id="cnt2">1</h5>
                        <div class="d-flex flex-column plus-minus"> <h5 class="vsm-text plus">+</h5> <h5 class="vsm-text minus">-</h5> </div>
                    </div>
                </div>
                <div class="col-4">
                    <h6 class="mob-text">$13.50</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card">
                <div class="row">
                    <div class="col-lg-3 radio-group">
                        <div class="row d-flex px-3 radio"> <img class="pay" src="https://i.imgur.com/WIAP9Ku.jpg">
                            <p class="my-auto">Credit Card</p>
                        </div>
                        <div class="row d-flex px-3 radio gray"> <img class="pay" src="https://i.imgur.com/OdxcctP.jpg">
                            <p class="my-auto">Debit Card</p>

                        </div>
                        <div class="row d-flex px-3 radio gray mb-3"> <img class="pay" src="https://i.imgur.com/cMk1MtK.jpg">
                            <p class="my-auto">PayPal</p>

                        </div>
                        <div class="row d-flex px-3 radio gray mb-3">
                            <input name="thanhtoan" type="radio" value="nhanhang" />Thanh toán khi nhận hàng
                        </div>

                    </div>
                    <div class="col-lg-5">
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label">Name on Card</label> <input type="text" id="cname" name="cname" placeholder="Johnny Doe"> </div>
                            <div class="form-group col-md-6"> <label class="form-control-label">Card Number</label> <input type="text" id="cnum" name="cnum" placeholder="1111 2222 3333 4444"> </div>
                        </div>
                        <div class="row px-2">
                            <div class="form-group col-md-6"> <label class="form-control-label">Expiration Date</label> <input type="text" id="exp" name="exp" placeholder="MM/YYYY"> </div>
                            <div class="form-group col-md-6"> <label class="form-control-label">CVV</label> <input type="text" id="cvv" name="cvv" placeholder="***"> </div>
                        </div>
                        <div class="row px-2">



                        </div>
                    </div>
                    <div class="col-lg-4 mt-2">
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">Subtotal</p>
                            <h6 class="mb-1 text-right">$23.49</h6>
                        </div>
                        <div class="row d-flex justify-content-between px-4">
                            <p class="mb-1 text-left">Shipping</p>
                            <h6 class="mb-1 text-right">$2.99</h6>
                        </div>
                        <div class="row d-flex justify-content-between px-4" id="tax">
                            <p class="mb-1 text-left">Total (tax included)</p>
                            <h6 class="mb-1 text-right">$26.48</h6>
                        </div> <button class="btn-block btn-blue"> <span> <span id="checkout">Checkout</span> <span id="check-amt">$26.48</span> </span> </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>