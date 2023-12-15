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
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<style>
.header_bg {
    background-color: #ecfdff;
    height: 230px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.padding_top1{
    padding-top:20px;
}
.a1{
    padding-top:130px;
}

.a2{
    height: 230px;

}
.login_part .login_part_text {
    background-color: #000;
    background-image: none;
    border-radius: 10px;
}
.login_part .login_part_text .btn_3 {
    border: 1px solid #fff;
}
.login_part .login_part_text .btn_3:hover {
    color: #000;
}
.btn_3 {
    background-color: #000;
    border: none;
}
.footer_part .single_footer_part .mail_part .email_icon {
    background-color: #000;
    border: 1px solid #000;
}
</style>

<body>
<script type="text/javascript" id="zsiqchat">var $zoho=$zoho || {};$zoho.salesiq = $zoho.salesiq || {widgetcode: "siq9a500ad8f5dc4c2d2f9517dd93151a3d", values:{},ready:function(){}};var d=document;s=d.createElement("script");s.type="text/javascript";s.id="zsiqscript";s.defer=true;s.src="https://salesiq.zohopublic.com/widget";t=d.getElementsByTagName("script")[0];t.parentNode.insertBefore(s,t);</script>
    <?php include 'header.php';?>

  <!--================Home Banner Area =================-->
  <!-- breadcrumb start-->
  <section class="breadcrumb header_bg">
        <div class="container">
            <div class="row  a2">
                <div class="col-lg-8 a2">
                        <div class="sanphamnoibat">
                            <!-- <h2>Đăng Nhập</h2> -->
                        </div>
                </div>
            </div>
        </div>
    </section>
  <!-- breadcrumb end-->

    <!--================login_part Area =================-->
    <section class="login_part">
        <div class="container">
            <div class=" align-items-center">
                <div class="col-lg-6 col-md-6" style="
                    background-color: #85FFBD;
                 background-image: linear-gradient(45deg, #85FFBD 0%, #f7ff7d 100%);"    >
                    <div class="login_part_text text-center"  style="display:none;">
                        <div class="login_part_text_iner">
                            <h2>Chào mừng bạn đến DVNT!</h2>
                            <p>Vui lòng đăng ký tài khoản.</p>
                            <a href="register.php" class="btn_3"   
                           
                            >Đăng ký</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6" style="
                    background-color: #85FFBD;
                    background-image: linear-gradient(45deg, #85FFBD 0%, #f7ff7d 100%);"  >
                    <div class="login_part_form" style="background-image: linear-gradient(45deg, #85ffbd 0%, #fffb7d 100%);">
                        <div class="login_part_form_iner">
                            <h3>Chào Mừng Trở Lại ! <br> Đăng Nhập Ngay</h3>
                            <?php
                                if (isset($_POST["dangnhap"])) {
                                    $email = ($_POST["email"]);
                                    $matkhau = ($_POST["matkhau"]);
                                    if (rowCount("SELECT * FROM taikhoan WHERE taikhoan='$email' && matkhau='$matkhau' && status =0") == 1) {
                                        setcookie('user', $email, time() + (86400 * 30), "/");
                                        header('location:index.php');
                                    } 
                                    else if (rowCount("SELECT * FROM taikhoan WHERE status =1") == 1){
                                        $error = 'Tài khoản của bạn đã bị khóa. Vui lòng liên hệ admin';
                                    }
                                    else{
                                        $error = 'Tài khoản hoặc mật khẩu không chính xác. Vui lòng kiểm tra lại';
                                    }
                                }
                            ?>
                            <form class="row contact_form" action="" method="post" novalidate="novalidate">
                                <?php
                                    if (isset($error)) {
                                    ?>
                                        <p class="text-danger ml-3 mb-3"><?= $error ?></p>
                                    <?php
                                    }
                                ?>
                                <div class="col-md-12 form-group p_star exampleInputName1">
                                    <input type="text" class="form-control"  name="email" value="" required placeholder="Tài khoản (Email)">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" name="matkhau" value="" required placeholder="Mật khẩu">
                                </div>
                                <div class="col-md-12 form-group">
                                    <!-- <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div> -->
                                    <button type="submit" name="dangnhap" class="btn_3"  style=" ">
                                        đăng nhập
                                    </button>
                                    
                                    <a href="register.php" class="btn_3"  style="display: flex;
    justify-content: center;">Đăng ký</a>
                               
                                    <!-- <a class="lost_pass" href="#">quên mật khẩu?</a> -->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->

    <!--::footer_part start::-->
    <style>
        /* @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap"); */

* {
  margin: 0;
  padding: 0;
  /* box-sizing: border-box; */
  font-family: "Poppins", sans-serif;
}



.footer {
  position: relative;
  width: 100%;
  background: #c0dd99;
  min-height: 100px;
  padding: 20px 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.social-icon,
.menu {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
  flex-wrap: wrap;
}

.social-icon__item,
.menu__item {
  list-style: none;
}

.social-icon__link {
  font-size: 2rem;
  color: #fff;
  margin: 0 10px;
  display: inline-block;
  transition: 0.5s;
}
.social-icon__link:hover {
  transform: translateY(-10px);
}

.menu__link {
  font-size: 1.2rem;
  color: #fff;
  margin: 0 10px;
  display: inline-block;
  transition: 0.5s;
  text-decoration: none;
  opacity: 0.75;
  font-weight: 300;
}

.menu__link:hover {
  opacity: 1;
}

.footer p {
  color: #fff;
  margin: 15px 0 10px 0;
  font-size: 1rem;
  font-weight: 300;
}

.wave {
  position: absolute;
  top: -100px;
  left: 0;
  width: 100%;
  height: 100px;
  background: url("https://img.upanh.tv/2023/11/29/Untitled-4a61591b153285e3e.png");
  background-size: 1000px 104px;
}

.wave#wave1 {
  z-index: 1000;
  opacity: 1;
  bottom: 0;
  animation: animateWaves 4s linear infinite;
}

.wave#wave2 {
  z-index: 999;
  opacity: 0.5;
  bottom: 10px;
  animation: animate 4s linear infinite !important;
}

.wave#wave3 {
  z-index: 1000;
  opacity: 0.2;
  bottom: 15px;
  animation: animateWaves 3s linear infinite;
}

.wave#wave4 {
  z-index: 999;
  opacity: 0.7;
  bottom: 20px;
  animation: animate 3s linear infinite;
}

@keyframes animateWaves {
  0% {
    background-position-x: 1000px;
  }
  100% {
    background-positon-x: 0px;
  }
}

@keyframes animate {
  0% {
    background-position-x: -1000px;
  }
  100% {
    background-positon-x: 0px;
  }
}
    </style>
    <footer class="footer">
    <div class="waves">
      <div class="wave" id="wave1"></div>
      <div class="wave" id="wave2"></div>
      <div class="wave" id="wave3"></div>
      <div class="wave" id="wave4"></div>
    </div>
    <ul class="social-icon">
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-facebook"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-twitter"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-linkedin"></ion-icon>
        </a></li>
      <li class="social-icon__item"><a class="social-icon__link" href="#">
          <ion-icon name="logo-instagram"></ion-icon>
        </a></li>
    </ul>
    <ul class="menu">
      <li class="menu__item"><a class="menu__link" href="#">Home</a></li>
      <li class="menu__item"><a class="menu__link" href="#">About</a></li>
      <li class="menu__item"><a class="menu__link" href="#">Services</a></li>
      <li class="menu__item"><a class="menu__link" href="#">Team</a></li>
      <li class="menu__item"><a class="menu__link" href="#">Contact</a></li>

    </ul>
    <p>&copy;2021 Nadine Coelho | All Rights Reserved</p>
  </footer>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <!--::footer_part end::-->

    <!-- jquery plugins here-->
    <!-- jquery -->
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
    <script src="js/stellar.js"></script>
    <script src="js/price_rangs.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>

</html>