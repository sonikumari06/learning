<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Document</title>
    
</head>
<body>

<section class="wrapper">
        <div class="container-fostrap">
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img th:src="@{/images/logo.png}"  src="../static/images/logo.png" width="auto" height="40" class="d-inline-block align-top" alt=""/>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <h4>Welcome ${ username } </h4>
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/}" href="#">Home</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="profileDisplay" >Profile</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAuthenticated()" href="logout">Logout</a>
                </li>
               
            </ul>

        </div>
    </div>
</nav>
<div class="bg mt-5">
  <div class="bg-product mt-5">
    <div class="container product">
      <div class="row">
        <div id="sliderproduct" class="carousel slide " data-ride="carousel" data-interval="10000">
          <ol class="carousel-indicators">
            <li data-target="#sliderproduct" data-slide-to="0" class="active"></li>
            <li data-target="#sliderproduct" data-slide-to="1"></li>
            <li data-target="#sliderproduct" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox" data-interval="10000000">
            <div class="carousel-item active">
              <div class="container text-center">
                <div class="row">
                  <div class="col-sm-6 image">
                    <div class="item">
                      <h1>Today's Course</h1>
                      <img class="img-fluid" src="data:image/png;base64,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" alt="">
                    </div><!--enditem-->
                  </div><!--endcol-->
                  <div class="col-sm-6">
                    <div class="top d-flex justify-content-center">
                      <a href=""><b>2</b> <br>days</a>
                      <a href=""><b>20</b> <br> hours</a>
                      <a href=""><b>15</b> <br>min</a>
                      <a href=""><b>2</b> <br> sec</a>
                    </div><!--endtop-->
                    <div class="details">
                      <h2 class="cr3"> Java Full Stack</h2>
                      <p class="cr4"> servlet , Spring , springBoot ….</p>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div><!--endrating-->
                      <p class="cr1">$ 150-$ 200</s></p>
                  <a href="/user/products" class="btn btn-food">Buy Now</a>
                </div><!--enddetails-->
              </div><!--endcol-->
            </div><!--endrow-->
          </div><!--endcontainer-->
        </div><!--endcarousel-item-->
        <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
                  <h1>Today Course</h1>
                  <img class="img-fluid" src="data:image/jpeg;base64,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" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                  <a href=""><b>2</b> <br>days</a>
                  <a href=""><b>20</b> <br> hours</a>
                  <a href=""><b>15</b> <br>min</a>
                  <a href=""><b>2</b> <br> sec</a>
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">Mern Stack</h2>
                  <p class="cr4">react,<br> Node js, Express.js, ….</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$ 100-$ 150</s></p>
              <a href="/user/products" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
      <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
                  <h1></h1>
   <img class="img-fluid" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUREhIVFRUVGBUVGBUYGRIWExgXHxgYFxUYFxYYHSggGBsmGxkZITEhJSkrLy4uFx8zODUtNygtLisBCgoKDg0OGhAQGy0lICItKystLy0tLS0tLS0wKy0tLS0rLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCAQj/xABLEAABAwEEAwsHCQgBAwUAAAABAAIDEQQFEiExQVEGBxMUImGBkaGx0hcyUlNxk9EWI0JUYnKCksEzNFVjc6Lh8MIVo7MkJUNksv/EABsBAQADAQEBAQAAAAAAAAAAAAABAgMEBQYH/8QANhEAAQMCAwYDBgYCAwAAAAAAAQACEQMhBBIxBUFRYXGhE4GRIjJCwdHwFFKSseHxFSNystL/2gAMAwEAAhEDEQA/AOyIiKyhERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERYTOK07URZkRad7Xg2zxPmfUho0DS4nJrRzkkBWa0uIA1KguDRJW4irtmum0TnFabRJG5wxiGImNrW6KVGbyNeeVRtC82yOewDheFfaIARwjX8qVjdGNrtJpsK3FBpORrwXcLwTwBjXrAPHRZeKQMxaQPKesfcb1ZEXljgQCDUEVB2jUvS5lsiIiIiIiIiIiIixyTBunqVc3X7sGWB8LXMLhISHOa5uKMZUODS6uezzTpOS1tzu6mC2NLmnA4OLSx5aHnWHAVzBHbUKQJRWN1rOoBfONO5lhRXgKsrZba9o6lsRyA6D8VHL6DRQWhTKk1ihkJrUUovFnnrkdPevc7CRQKsbipWQGuhfVrWWMitVsoURERQiIiIiIiIiIiIiIiIiIi+Eoi8vBqKHLWvD4m1qepfDLXRoXhSizGUKE3Vy/NMeQS2KaGV401Y14xZdvQpVeHsDgWkVBFCDoI1haUn+G9r+BVKjczS3ipB7RI1rmu2Oa8UOrVtBB6io3dE9kNlmdI4uxRubyjXE4gta0NGQqTqCiobttEHJss+GPSIpGiRrfuGoIHMvUV0yPkbLapjM5hqxgAZG07cA0nnK0ZSpscHZ5Avo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" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                  <a href=""><b>2</b> <br>days</a>
                  <a href=""><b>20</b> <br> hours</a>
                  <a href=""><b>15</b> <br>min</a>
                  <a href=""><b>2</b> <br> sec</a>
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">Python Course</h2>
                  <p class="cr4">Django,<br> flask, ….</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$ 70-$ 70.5</s></p>
              <a href="/user/products" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
    <a class="carousel-control-prev fa fa-angle-left" href="#sliderproduct" role="button" data-slide="prev">
    </a>
    <a class="carousel-control-next fa fa-angle-right" href="#sliderproduct" role="button" data-slide="next">
    </a>
  </div><!--endslidesliderproduct-->
</div><!--endrow-->
</div><!--endcontainer-->
</div><!--endbg-product-->
</div>
</div>


<style>
:root{
  --cr1:#F36E45;
  --cr2:#fff;
  --cr3:#000000da;
  --cr4:#000000a1;
  --cr5:#BEB4B1;
  --fs1:34px;
  --fs2:24px;
  --fs3:20px;
  --fs4:16px;
  --fs5:14px;
}
body {
  background: #e5e5e5;
}
/* the same attribute */
.cr1{
  color: var(--cr1);
}
.c2{
  color:  var(--cr2);
}
.cr3{
  color:  var(--cr3);
}
.cr4{
  color:  var(--cr4);
}
.cr5{
  color:  var(--cr5);
}
.fs1{
  font-size: 34px;
}
.fs2{
  font-size: 24px;
}
.fs3{
  font-size: 20px;
}
.fs4{
  font-size: 16px;
}
.fs5{
  font-size: 14px;
}
/* end the same attribute */
@font-face {
  src: url(ProductSansRegular_0.ttf);
  font-family: product;
}
*{padding: 0px;margin: 0px;box-sizing: border-box;font-family: segoe ui}
body,html{width:100%;height:100%;}
[class*="container"]{
  max-width: 1170px !important;
}

.bg-product{
  /* SET Height cho nó rồi bảo sao ko lỗi? */
  /*height: 446px;*/
  background: #d1d7f5;
  /* overflow: hidden; */
}
#sliderproduct{
  width: 100%;
}
#sliderproduct .carousel-inner {
  overflow: visible;
}

#sliderproduct .col-sm-6.image {
  background: #fff;
  box-shadow: 0px 4px 8px 0px #959595;
  position: relative;
  /* Thêm cái của nợ này vào bảo sao nó ko tràn bờ đê */
  /*top: -44px;
  padding: 100px;
  padding-top: 40px;*/
}
.item {
  padding: 20px 20px 40px 20px;
}

.col-sm-6.image .item img.img-fluid {
  /* Ai mướn thêm cái vào làm phá bố cục css của người ta.. mún trang web đẹp thì phải lựa cái ảnh đẹp đẹp vào rồi set cái độ rộng cho nó vừa là được rồi */
  /*min-width: 100%;*/
  width: 315px;
}
.col-sm-6.image h1 {
  margin-bottom: 20px;
}


#sliderproduct .top a {
  text-decoration: none;
  text-transform: uppercase;
  font-size: 18px;
  padding: 14px 22px;
  background: #e0794f;
  box-sizing: border-box !important;
  text-align: center;
  margin: 0px 2px;
  display: block;
  color: #fff;
  width: 96px;
}

#sliderproduct .col-sm-4.mr-auto {
  margin-top: 22px;
}

*{}

#sliderproduct p.cr1 {
  font-size: 20px;
  font-weight: 500;
  margin-bottom: 30px;
}

#sliderproduct .col-sm-6:last-child {
  /* Cần nâng cao thêm kiến thức về sử dụng padding */
  padding-top: 27px;
  padding-bottom: 27px;
}
#sliderproduct .details p.d-inline-block {
  color: #e0794f;
}

#sliderproduct .details .fa {
  color: #e0794f;
  padding: 0px 3px;
}

#sliderproduct .rating {
  margin: 23px 0px;
}

#sliderproduct .details .btn {
  text-transform: uppercase;
  font-weight: 400;
  padding: 16px 22px;
  background: #e0794f;
  color: #fff;
  border-radius: 81px;
  font-size: 14px;
  display: inline-block;
}

#sliderproduct .details h2 {
  margin: 25px 0px 30px 0px;
  font-size: 24px;
  font-weight: 700;
}

#sliderproduct .details p.cr4 {
  font-weight: 500;
  font-size: 16px;
  line-height: 19px;
  margin-bottom: 0px;
}
#sliderproduct .carousel-item{
  transition: 0.4s;
}


#sliderproduct a.carousel-control-prev, #sliderproduct a.carousel-control-next {
  border-radius: 50%;
  background-color: brown;
  width: 46px;
  height: 46px;
  font-size: 30px;
  text-align: center;
  line-height: 40px;
  opacity: 1;
  top: 50%;
  transform: translate(-50%,-60%);
}

.bg {
  height: 570px;
  overflow: hidden;
}

#sliderproduct ol.carousel-indicators {
  display: none;
}

.footer {
  position: fixed;
  bottom: 0;
  padding: 15px;
  width: 100%;
  text-align: center;
  background-color:#292929;
  color: #fff;
  font-family: sans-serif;
  font-size: 14px;
}
.footer img {
  width: 26px;
  position: relative;
  top: 0px;
  left: -3px;
}
.footer a {
  color: #fff;
  font-weight: bold;
  text-decoration: none;
  
  
}</style>
<div class="row">
   <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" data-aos="zoom-in-down">
                            <div class="card">
                                <a class="img-card">
                                    <img src="data:image/jpeg;base64,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" />

                                </a>
                                <div class="card-content">
                                    <h4 class="card-title">
                                        Best deal's
                                    </h4>
                                    <p class="">
                                       Checkout out our products
                                        <br>
                                    </p>
                                </div>
                                <div class="card-read-more">
                                    <a href="/user/products" class="btn btn-link btn-block">
                                        GO
                                    </a>
                                </div>
                            </div>
                        </div>
<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" data-aos="zoom-in-down">
                            <div class="card">
                                <a class="img-card">
                                    <img src="data:image/jpeg;base64,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" />

                                </a>
                                <div class="card-content">
                                    <h4 class="card-title">
                                        Contact us
                                    </h4>
                                    <p class="">
                                      find us.
                                        <br>
                                    </p>
                                </div>
                                <div class="card-read-more">
                                    <a href="/contact" class="btn btn-link btn-block">
                                        Contact
                                    </a>
                                </div>
                            </div>
                        </div>

	<style>
        @import url('https://fonts.googleapis.com/css2?family=Titillium+Web:wght@200;300&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Arimo&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Signika:wght@300&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Titillium Web', sans-serif;
        }

        html,
        body {
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            height: 100%;
            width: 100%;

            font-family: 'Roboto', sans-serif;
            font-weight: 400;
        }
        
         ::selection {
            color:white;
            background: black;
            font-weight: 700;
        }

        .wrapper {
            display: table;
            height: 100%;
            width: 100%;
        }

        .container-fostrap {
            display: table-cell;
            background-color: #b1ade2;
            background-image: linear-gradient(315deg, #b1ade2 0%, #7ddff8 74%);
            padding: 1em;
            text-align: center;
            vertical-align: middle;
        }

        h1.heading {
            color: #fff;
            font-size: 1.15em;
            font-weight: 900;
            margin: 0 0 0.5em;
            color: #505050;
            text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),
                0px 8px 13px rgba(0, 0, 0, 0.1),
                0px 18px 23px rgba(0, 0, 0, 0.1);
        }

        @media (min-width: 450px) {
            h1.heading {
                font-size: 3.55em;
            }
        }

        @media (min-width: 760px) {
            h1.heading {
                font-size: 3.05em;
            }
        }

        @media (min-width: 900px) {
            h1.heading {
                font-size: 3.25em;
                margin: 0 0 0.3em;
            }


        }

        .card {
            display: block;
            width: auto;
            margin: 20px;
            line-height: 1.42857143;
            background-color: #fff;
            border-radius: 2px;
            min-width: 15rem;
            min-height: 400px;
            overflow: hidden;
            transition: 0.5s ease;
            animation: start_animation 0.5s ease 1;
            box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
        }

        .cfont {
            font-family: 'Arimo', sans-serif;
        }

        .card:hover {
            box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
        }

        .img-card {
            width: 80%;
            height: 225px;
            min-width: 14rem;
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
            display: flex;
            overflow: hidden;
        }

        .img-card img {
            margin-top: 15px;
            width: fit-content;
            height: 200px;
            object-fit: cover;
            transition: all .25s ease;
            filter: drop-shadow(0.35rem 0.35rem 0.4rem rgba(0, 0, 0, 0.5));
        }

        .card-content {
            padding: 15px;
            text-align: left;

        }

        .card-content p {
            font-family: 'M PLUS Rounded 1c', sans-serif;
        }

        .card-title {
            font-family: 'Signika', sans-serif;
            margin-top: 0px;
            font-weight: 600;
            font-size: 1.65em;
        }

        .card-title a {
            color: #000;
            text-decoration: none !important;
        }

        .card-read-more {
            border-top: 1px solid #D4D4D4;
        }

        .card-read-more a {
            text-decoration: none !important;
            padding: 10px;
            font-weight: 600;
            text-transform: uppercase
        }


        .navbar {
            background-color: black;
            opacity: 0.9;
            z-index: 999;
            width: 100%;
        }

        .navbar::before {
            content: "";
            position: absolute;
            top: 0%;
            bottom: 0%;
            left: 0;
            right: 0;
            z-index: -1;
        }

        .nav-item a {
            color: white;
            font-weight: 500;
            font-size: 17px;
            transition: 0.5s ease;
        }

        .nav-item a:hover {
             color: rgb(0, 195, 255);
            font-weight: bold;
            transition: 0.5s ease-in-out;
            
        }

        .navbar-brand {
            color: white;
            font-weight: 600;
            font-size: 20px;
        }

        .nav-item {
            margin-right: 20px;
        }	
        </section>
</div>	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>