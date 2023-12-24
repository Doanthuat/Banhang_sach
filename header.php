<?php 
    if (isset($_GET["checkout"])) {
        setcookie("user", null, -1, '/');
        header('location:index.php');
    }
    ?>
    <style>
        .main_menu {
            position: fixed;
            /* background: red; */
            background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);
            box-shadow: rgb(150 183 122 / 57%) 0px 3px 8px;
        }
        .main_menu .main-menu-item ul li .nav-link {
            display:flex;
            color: #000;
            min-width: 114px;
            justify-content: center;
        }
        .main_menu .main-menu-item ul li .nav-link:hover {
            color: #000;
        }
        .ti-search:before {
            color: #000;
        }
        .fa-cart-plus:before {
            color: #fff;
        }
        .dropdown-menu{
            background-color: #000;
        }
        .dropdown .dropdown-menu .dropdown-item {
            background-color: #92ff97;
            background-image: linear-gradient(45deg, #85FFBD 0%, #9cff7d 100%);

        }
        .dropdown .dropdown-menu {
            background-color:#92ff97 ;
        }
        .dropdown-item__hover:hover {
            
            background-color: #7a7a7a;
        }
        .main_menu #search_input_box {
            /* border: 2px solid red; */
            background-color: #000;
        }
        /* .container  {
            border: 2px solid #FFF;
        } */
        .home_menu .main-menu-item{
            margin-right: 400px;
        }
        .owl-nav {
            display: none;
        }
    </style>
    <!--::header part start::-->
    <section class="main_menu home_menu">
        <div class="container"  style="
        
    display: inline-block;
    height: 150px;
    
">
            <div class="row align-items-center" >
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light" style="width: 90vw; height: 150px;" >
                        <a class="navbar-brand" style=" margin-left: 50px; " href="index.php"> <img src="img/slide/LOGO-SACH-2017-01-1.png" alt="logo" style="height: 100px;max-width:none; "> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"><i class="fas fa-bars"></i></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent"  style="margin: 0;">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link nav-link_trangchu" href="index.php" style="">Trang chủ</a>

                                </li>
                                <style>
                                    .nav-link_trangchu:hover {
                                        background-color: #fff;
                                        font-weight: 700;
                                        opacity: 0.5;
                                    }
                                    .hovertaikhoan:hover {
                                        background-color: #fff;
                                        opacity: 0.5;
                                        
                                    }
                                    .dropdown-item:hover {
                                        background-color: #fff;
                                        /* font-weight: 700; */
                                        
                                        opacity: 0.5;
                                    }
                                </style>
                                <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown_1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        sản phẩm
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="category.html"> danh mục sản phẩm</a>
                                        <a class="dropdown-item" href="single-product.html">chi tiết sản phẩm</a>

                                    </div>
                                </li> -->

                                <li class="nav-item">
                                    <a class="nav-link nav-link_trangchu"  href="product.php">sản phẩm</a>
                                </li>
                                
                                <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="" id="navbarDropdown_2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Tin Tức
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                        <a class="dropdown-item" href="blog.php"> Tin Tức</a>
                                        <a class="dropdown-item" href="single-blog.html">Single blog</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Tin Tức</a>
                                </li> -->

                                <li class="nav-item">
                                    <a class="nav-link nav-link_trangchu" href="contact.php">Liên hệ</a>
                                </li>

                                <?php 
                                    if (isset($_COOKIE["user"])) {
                                        $taikhoan = $_COOKIE["user"];
                                        foreach (selectAll("SELECT * FROM taikhoan WHERE taikhoan='$taikhoan'") as $item) {
                                            $ten = $item['hoten'];
                                            $anh = $item['anh'];
                                            $phanquyen = $item['phanquyen'];
                                        }
                                ?>
                                
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown_3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Chào <?= $ten ?>
                                            <!-- <img id="blah" src="<?= empty($anh)?'./img/account/user.png':'./img/account/'.$anh.'' ?>" alt="your image" width="50px" height="50px" /> -->

                                        </a>
                                        <div class="dropdown-menu" style="padding: 0;" aria-labelledby="navbarDropdown_2">
                                            <?php 
                                                if ($phanquyen==1) {
                                            ?>
                                                <a class="dropdown-item dropdown-item__hover" href="admin">Trang quản trị</a>
                                            <?php
                                            }
                                            ?>

                                            <a class="dropdown-item" href="infor.php"> thông tin tài khoản</a>
                                            <a class="dropdown-item" href="?checkout">đăng xuất</a>
                                            
                                        </div>
                                    </li>
                                <?php
                                    }
                                    else{
                                ?>
                                    <li class="nav-item dropdown" style="
                                        margin-left: 53vw;
">
                                        <a class="nav-link hovertaikhoan dropdown-togglee" href="" id="navbarDropdown_3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"                                        >
                                            tài khoản
                                        </a>
                                        <div class="dropdown-menu" style="padding: 0;" aria-labelledby="navbarDropdown_2">
                                            <a class="dropdown-item" href="register.php" style="color:#000 !important;"> đăng ký</a>
                                            <a class="dropdown-item" href="login.php" style="color:#000 !important;" >đăng nhập</a>
                                        </div>
                                    </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </div>
                        <div class="hearer_icon d-flex">
                            <a id="search_1" href="javascript:void(0)" style="cursor: pointer; margin: right -20px;"><i class="ti-search" style="font-size:20px"></i></a>
                            <!-- <a href=""><i class="ti-heart"></i></a> -->
                            <div >
                                <a class="" href="cart.php" id="navbarDropdown3" role="button" > <!-- data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" -->
                                <i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 20px; color:#000;"></i>
                                    <?php 
                                        if (isset($_COOKIE["user"])) {
                                            $taikhoan = $_COOKIE["user"];
                                            foreach (selectAll("SELECT * FROM taikhoan WHERE taikhoan ='$taikhoan'") as $item) {
                                                $id_nguoidung = $item['id'];
                                            }
                                            if (rowCount("SELECT * FROM donhang WHERE id_taikhoan=$id_nguoidung && status=0")>0) {
                                                foreach (selectAll("SELECT * FROM donhang WHERE id_taikhoan=$id_nguoidung && status=0") as $items) {
                                                    $id_donhang = $items['id'];
                                                }
                                                if(rowCount("SELECT * FROM ctdonhang WHERE id_donhang=$id_donhang")>0){
                                                ?>
                                                <span class='badge badge-danger' style='vertical-align: top; margin:-10px 0px 0px -10px; font-size:10px'><?= rowCount("SELECT * FROM ctdonhang WHERE id_donhang=$id_donhang") ?></span>
                                                <?php 
                                                } else{
                                                ?>
                                                    <span></span>
                                                <?php
                                                }
                                                ?>
                                                <?php
                                            }
                                        }
                                    ?>
                                </a>
                                <!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <div class="single_product">

                                    </div>
                                </div> -->

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="search_input" id="search_input_box">
            <div class="container " style="background-color: #85FFBD;
                                         background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);
                                         box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
                                         padding:25px;">
                <form class="d-flex justify-content-between search-inner" action="product.php" method="GET" autocomplete="off">
                    <input type="text" class="form-control" name="tim" placeholder="Bạn cần tìm gì?" style="color: #000;">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    </section>
    <!-- Header part end-->