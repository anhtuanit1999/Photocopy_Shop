<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>account setting or edit profile - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>
<!-- Navigation -->
<nav class="navb navbar navbar-expand-lg fixed-top" >
    <div class="container">
        <a class="navbar-brand" href="indexUser.html">Start Bootstrap</a>
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
                    <a class="nav-link" href="shoppingcart.html"><img src="images/shopping-cart.png" alt="">   Giỏ hàng</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="profile.html"><img src="images/shopping-cart.png" alt="">Thông tin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.html"><img src="images/enter.png" alt="">  Đăng nhập</a>

                </li>
            </ul>
        </div>
    </div>
</nav>



<div class="container">
    <div class="row gutters">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Maxwell Admin">
                            </div>
                            <h5 class="user-name">Yuki Hayashi</h5>
                            <h6 class="user-email">yuki@Maxwell.com</h6>
                        </div>
                        <div class="about">
                            <h5>About</h5>
                            <p>I'm Yuki. Full Stack Designer I enjoy creating user-centric, delightful and human experiences.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <h6 class="mb-2 text-primary">Personal Details</h6>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="fullName">Full Name</label>
                                <input type="text" class="form-control" id="fullName" placeholder="Enter full name">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="eMail">Email</label>
                                <input type="email" class="form-control" id="eMail" placeholder="Enter email ID">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" id="phone" placeholder="Enter phone number">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="website">Website URL</label>
                                <input type="url" class="form-control" id="website" placeholder="Website url">
                            </div>
                        </div>
                    </div>
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <h6 class="mt-3 mb-2 text-primary">Address</h6>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="Street">Street</label>
                                <input type="name" class="form-control" id="Street" placeholder="Enter Street">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="ciTy">City</label>
                                <input type="name" class="form-control" id="ciTy" placeholder="Enter City">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="sTate">State</label>
                                <input type="text" class="form-control" id="sTate" placeholder="Enter State">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="zIp">Zip Code</label>
                                <input type="text" class="form-control" id="zIp" placeholder="Zip Code">
                            </div>
                        </div>
                    </div>
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="text-right">
                                <button type="button" id="submit" name="submit" class="btn btn-secondary">Cancel</button>
                                <button type="button" id="submit" name="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

</script>
</body>
</html>