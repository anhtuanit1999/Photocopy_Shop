<!DOCTYPE html>
<html lang="en">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>404 Error Page - Ace Admin</title>

    <meta name="description" content="404 Error Page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- page specific plugin styles -->

    <!-- text fonts -->
    <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

    <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />


    <link rel="stylesheet" href="assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />


    <script src="assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->


</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
            <a href="index.html" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Ace Admin
                </small>
            </a>
        </div>

        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">

                <li class="purple dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i>
                            8 Notifications
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i>
                                        Bob just signed up as an editor ...
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
                                            <span class="pull-right badge badge-info">+11</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">
                                See all notifications
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />
                        <span class="user-info">
									<small>Welcome,</small>
									Jason
								</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>

                        <li>
                            <a href="profile.html">
                                <i class="ace-icon fa fa-user"></i>
                                Profile
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div><!-- /.navbar-container -->
</div>

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try{ace.settings.loadState('sidebar')}catch(e){}
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">



            <ul class="nav nav-list">
                <li class="active">
                    <a href="profile.html">
                        <i class="menu-icon fa fa-tachometer"></i>
                        <span class="menu-text"> Dashboard </span>
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-list"></i>
                        <span class="menu-text"> Tables </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="tables.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Nhà sản xuất &amp; Sản phẩm
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="taikhoan-khachhang.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Tài khoản &amp; Kách hàng
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>





                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-tag"></i>
                        <span class="menu-text"> More Pages </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="">
                            <a href="profile.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                User Profile
                            </a>

                            <b class="arrow"></b>
                        </li>


                        <li class="">
                            <a href="login.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Login &amp; Register
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle">
                        <i class="menu-icon fa fa-file-o"></i>

                        <span class="menu-text">
								Other Pages


							</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">


                        <li class="">
                            <a href="error-404.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Error 404
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="error-500.html">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Error 500
                            </a>

                            <b class="arrow"></b>
                        </li>


                    </ul>
                </li>
            </ul><!-- /.nav-list -->
        </div><!-- /.sidebar-shortcuts -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>

                    <li>
                        <a href="#">Other Pages</a>
                    </li>
                    <li class="active">Error 404</li>
                </ul><!-- /.breadcrumb -->

                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->
            </div>

            <div class="page-content">
                <div class="ace-settings-container" id="ace-settings-container">
                    <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                        <i class="ace-icon fa fa-cog bigger-130"></i>
                    </div>

                    <div class="ace-settings-box clearfix" id="ace-settings-box">
                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <div class="pull-left">
                                    <select id="skin-colorpicker" class="hide">
                                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                    </select>
                                </div>
                                <span>&nbsp; Choose Skin</span>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                                <label class="lbl" for="ace-settings-add-container">
                                    Inside
                                    <b>.container</b>
                                </label>
                            </div>
                        </div><!-- /.pull-left -->

                        <div class="pull-left width-50">
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                            </div>
                        </div><!-- /.pull-left -->
                    </div><!-- /.ace-settings-box -->
                </div><!-- /.ace-settings-container -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <form:form modelAttribute="product" method="post" action="${home/save}">
                            <div class="form-group">
                                <label for="name">Tên sản phẩm:</label>
                                <input type="email"  class="form-control" id="name" placeholder="Tên sản phẩm " name="name"
                            value="<c:out value='${product.machineName}' />"  >
                            </div>
                            <div class="form-group">
                                <label for="type">Loại sản phẩm:</label>
                                <input pat type="product_type"  class="form-control" id="type" placeholder="Loại sản phẩm"
                            name="type"   value="<c:out value='${product.machineType}' />">
                            </div>
                            <div class="form-group">
                                <label for="machine_feature">Chức năng:</label>
                                <input type="machine_feature" class="form-control" id="machine_feature" placeholder="Chức năng" name="machine_feature"
                            value="<c:out value='${product.machineFeature}' />">
                            </div>
                            <div class="form-group">
                                <label for="paper_tray">Khay giấy:</label>
                                <input type="paper_tray"  class="form-control" id="paper_tray" placeholder="Khay giấy" name="paper_tray"
                            value="<c:out value='${product.paperTray}' />">
                            </div>
                            <div class="form-group">
                                <label for="paper_size">Khổ giấy:</label>
                                <input type="paper_size"class="form-control" id="paper_size" placeholder="Khổ giấy" name="paper_size"
                            value="<c:out value='${product.paperSize}' />">
                            </div>
                            <div class="form-group">
                                <label for="print_speed">Tốc độ in:</label>
                                <input type="print_speed"class="form-control" id="print_speed" placeholder="Tốc độ in" name="print_speed"
                            value="<c:out value='${product.printSpeed}' />">
                            </div>
                            <div class="form-group">
                                <label for="dao_mat">Đảo mặt:</label>
                                <input type="dao_mat" class="form-control" id="dao_mat" placeholder="Có/Không" name="dao_mat"
                            value="<c:out value='${product.isReverse}' />">
                            </div>
                            <div class="form-group">
                                <label for=" has_ARDF">Bộ nạp & đảo bản gốc:</label>
                                <input type=" has_ARDF"  class="form-control" id=" has_ARDF" placeholder="Có/Không" name=" has_ARDF"
                            value="<c:out value='${product.hasARDF}' />">
                            </div>
                            <div class="form-group">
                                <label for="communication_gate">Cổng kết nối:</label>
                                <input type="communication_gate" class="form-control" id="communication_gate" placeholder="Cổng giao tiếp" name="communication_gate"
                            value="<c:out value='${product.communicationGate}' />">
                            </div>
                            <div class="form-group">
                                <label for="ink">Mực:</label>
                                <input type="ink" class="form-control" id="ink" placeholder="Mực" name="ink"
                            value="<c:out value='${product.ink}' />">
                            </div>
                            <div class="form-group">
                                <label for="guarantee">Bảo hành:</label>
                                <input type="guarantee" class="form-control" id="guarantee" placeholder="Chế độ bảo hành" name="guarantee"
                            value="<c:out value='${product.guarantee}' />">
                            </div>
                            <div class="form-group">
                                <label for="machine_status">Trạng thái:</label>
                                <input type="machine_status"class="form-control" id="machine_status" placeholder="Trạng thái" name="machine_status"
                            value="<c:out value='${product.machineStatus}' />">
                            </div>
                            <div class="form-group">
                                <label for="category_id">Mã loại:</label>
                                <input type="category_id" class="form-control" id="category_id" placeholder="Mã loại" name="category_id"
                            value="<c:out value='${product.categoryId}' />">
                            </div>
                            <div class="form-group">
                                <label for="create_at">Ngày thêm:</label>
                                <input type="create_at" class="form-control" id="create_at" placeholder="Ngày" name="create_at"
                            value="<c:out value='${product.createAt}' />">
                            </div>
                            <div class="form-group">
                                <label for="update_by">Ngày cập nhật:</label>
                                <input type="update_by"class="form-control" id="update_by" placeholder="Ngày" name="update_by"
                            value="<c:out value='${product.createBy}' />">
                            </div>
                            <div class="form-group">
                                <label for="price">Giá tiền:</label>
                                <input type="price" class="form-control"id="price" placeholder="Giá" name="price"
                            value="<c:out value='${product.price}' />">
                            </div>

                            <button type="submit" class="btn btn-default" data-position="absolute">Thêm</button>
                        </form>
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>


<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
</body>
</html>
