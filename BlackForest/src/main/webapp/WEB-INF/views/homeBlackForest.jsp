<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home BlackForest</title>

<!-- html and css href -->
<!-- request.getContextPath() -> indica o endereço principal da aplicaçao -->
<!-- html and css href -->
<!-- request.getContextPath() -> indica o endereço principal da aplicaçao -->
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/bootstrap.min.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/shop-homepage.css" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/hello.css" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/shop-homepage.css" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/js/bootstrap.min.js" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/fonts/glyphicons-halflings-regular.eot" rel="stylesheet"/>



</head>
<body>
<!-- Provavelmente cada pagina vai precisar de um header especifico caso o papel do user mude ver na net -->
 <jsp:include page="fragments/header_main.jsp"/>
 
  <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead"></p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Categories</a>
                    <!--  <a href="#" class="list-group-item"></a>-->
                    <a href="/aboutUs" class="list-group-item">About Us</a>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                            	
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src = " <%=request.getContextPath() %>/resources/img/Untitled-1-1-800x300.jpg" alt="primeiraImg">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src=" <%=request.getContextPath() %>/resources/img/relogio-nismo-nissan-800x300.jpg" alt="segunda">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src=" <%=request.getContextPath() %>/resources/img/D304427-800x300.jpg" alt="terceiraImg">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
			<form action=""></form>
                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                           <img id="mainPage" src="<%=request.getContextPath() %>/resources/img/41vG+5szpcL._SY355_.jpg" alt="primeiraImg" >
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="#">First Product</a>
                                </h4>
                                <p>See more snippets like this online store item at <a target="_blank" href="http://www.bootsnipp.com">Bootsnipp - http://bootsnipp.com</a>.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img id="mainPage" src="<%=request.getContextPath() %>/resources/img/imaasdges.jpg" alt="primeiraImg" >
                            <div class="caption">
                                <h4 class="pull-right">$64.99</h4>
                                <h4><a href="#">Second Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img id="mainPage" src="<%=request.getContextPath() %>/resources/img/índisadadce.jpg" alt="primeiraImg" >
                            <div class="caption">
                                <h4 class="pull-right">$74.99</h4>
                                <h4><a href="#">Third Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img id="mainPage" src="<%=request.getContextPath() %>/resources/img/índisadadce.jpg" alt="primeiraImg" >
                            <div class="caption">
                                <h4 class="pull-right">$84.99</h4>
                                <h4><a href="#">Fourth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img id="mainPage" src="<%=request.getContextPath() %>/resources/img/índice.jpg" alt="primeiraImg" >
                            <div class="caption">
                                <h4 class="pull-right">$94.99</h4>
                                <h4><a href="#">Fifth Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

          

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

    </div>
    <!-- /.container -->

    <!-- jQuery - Falta o Jquery -->
    <script src="js/jquery.js"></script>

 

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>