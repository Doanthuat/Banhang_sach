<?php 
    include './connect.php';
?>
<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Banhang</title>
    <link rel="icon" href="img/slide/LOGO-SACH-2017-01-1.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/all.css">
    <!-- font Poppins CSS -->
    <link rel="stylesheet" href="./admin/assets/fonts/stylesheet.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
</head>
<style>
* {
    font-family: 'Poppins';
}
html {
    font-family: 'Poppins';
}
    .btn_2,
.form-contact .form-group .btn_1 i {
    background-image: linear-gradient(16deg, #000000 0%, #000000 64%, #000000 100%);
}
.sanphamnoibat::before {
    content: "";
    height: 89px;
    width: 4px;
    /* background-color: red; */
    top: 0;
    /* font-size: 17px; */
    position: absolute;
    /* align-items: center; */
    /* display: flex; */
    padding: -4px;
    background-image: linear-gradient(64deg, #99ea08 0%, #2AF598 100%);
}
.single_product_item:hover {
    box-shadow:0px 10px 20px 0px rgb(201 255 117 / 42%) ;
    
}
</style>
<body>
<script type="text/javascript" id="zsiqchat">var $zoho=$zoho || {};$zoho.salesiq = $zoho.salesiq || {widgetcode: "siq9a500ad8f5dc4c2d2f9517dd93151a3d", values:{},ready:function(){}};var d=document;s=d.createElement("script");s.type="text/javascript";s.id="zsiqscript";s.defer=true;s.src="https://salesiq.zohopublic.com/widget";t=d.getElementsByTagName("script")[0];t.parentNode.insertBefore(s,t);</script>
    <style>
        .banner_part {
            background-color: #b7b7b7;
        }
    </style>
    <?php include 'header.php';?>

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="banner_slider owl-carousel">
                    <?php 
                    foreach (selectAll("SELECT * FROM slide") as $item) {
                        ?>
                        <div class="single_banner_slider">
                            <div class="row">
                                <div class="col-lg-5 col-md-8">
                                    <div class="banner_text">
                                        <div class="banner_text_iner">
                                            <h1 class="addfont" style="text-transform: none;"><?= $item['ten'] ?></h1>
                                            <p><?= $item['mota'] ?></p>
                                            <a href="<?= $item['link'] ?>" class="btn_2">mua ngay</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner_img d-none d-lg-block">
                                    <img src="img/slide/<?= $item['anh'] ?>" alt="">
                                   
                                </div>
                            </div>
                        </div>
                        <?php
                        }
                    ?>
                    </div>
                    <!-- <div class="slider-counter"></div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- feature_part start-->
    <section class="feature_part padding_top">
        <div class="container">
            <div class="row ">
                <div class="col-lg-8">
                    <div class="sanphamnoibat" style="
                    font-size: 20px;
                    position: relative;
                    margin-top: 50px;

                    ">
                        <h2 class="sanphamnoibat-h2" style="font-size: 30px; padding:35px;">Sản Phẩm Nổi Bật</h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <?php 
                    foreach (selectAll("SELECT * FROM sanpham ORDER BY luotxem DESC LIMIT 4 ") as $item) {
                ?>
                <div class="col-lg-6 col-sm-6"
                style="  "
                
                >
                    <div class="single_feature_post_text" style="box-shadow: rgb(205 217 175) 0px 5px 15px 0px;">
                   
                        <h3><?= $item['ten'] ?></h3>
                        <a href="detail.php?id=<?= $item['id'] ?>" class="feature_btn"style="

                                                              padding:20px;    
                                                              background: linear-gradient(64deg, #99ea08 0%, #2AF598 100%);
                                                              color: #fff;
                                                              border-radius: 10px;" >KHÁM PHÁ NGAY   </a>
                        <img height="250px" src="img/product/<?= $item['anh1'] ?>" alt="">
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
        </div>
    </section>

    <!-- product_list part start-->
    <section class="product_list best_seller">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section_tittle text-center">
                        <h3>Sản Phẩm Mới</h3>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-between">
                <div class="col-lg-12">
                    <div class="best_product_slider owl-carousel">
                    <?php 
                        foreach (selectAll("SELECT * FROM sanpham ORDER BY id DESC LIMIT 8 ") as $item) {
                    ?>
                        <div class="single_product_item">
                            <a href="detail.php?id=<?= $item['id'] ?>" >
                                <img src="img/product/<?= $item['anh1'] ?>" alt="">
                            </a>
                            <div class="single_product_text">
                                <a href="detail.php?id=<?= $item['id'] ?>" >
                                <h4><?= $item['ten'] ?></h4>
                                <h3><?= number_format($item['gia']) . 'đ' ?></h3>
                                </a>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product_list part end-->

    <!-- subscribe_area part start-->
    <section class="subscribe_area section_padding1" style="margin-bottom: 180px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="subscribe_area_text text-center">
                        <h5 style="color:#000;">THAM GIA BẢN TIN CỦA CHÚNG TÔI</h5>
                        <h2>Đăng ký để được nhận ưu đãi từ nhà sách!</h2>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="nhập địa chỉ email" aria-label="Recipient's username" aria-describedby="basic-addon2" style="border:">
                            <div class="input-group-append">
                                <a href="#" class="input-group-text btn_2" id="basic-addon2" style="background-image:linear-gradient(64deg, #99ea08 0%, #2AF598 100%);"
                                >Gửi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <?php include 'footer.php';?>

    <!-- jquery plugins here-->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <!-- slick js -->
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>

</html>