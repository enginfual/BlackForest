<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<head>
<title>Spring MVC Head</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

<!-- Custom css and js-->
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/hello.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/js/hello.js.js" rel="stylesheet"/>

</head>
<form action="j_spring_security_logout" method="post" id="logoutForm">
	<input type="hidden"
	name="${_crsf.parameterName }"
	value="${_crsf.token}">
</form>

<script>
		function formSubmit(){
			document.getElementById("logoutForm").Submit();
			}

</script>


<!-- variaveis depois os botoes do html -->
<!-- spring:url -> serve para criar uma variavel -->
<spring:url value="/" var="urlHome"/>
<spring:url value="/clients/add" var="urlAddUser"/>
<spring:url value="/aboutUs" var="aboutUs" />

<input type="hidden" name="$(_crsf-parameterName)" value="$(_crsf.token)"/>


    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/homeBlackForest">BlackForest</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
            
                    <li>
                    	
                        <a href="/aboutUs">About</a>
                    </li>
               
                    <li>
                        <a href="">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                    <li class="dropdown">
                    	<a href="#" class="dropdown-toggle"
                    		data-toggle="dropdown" role="button"
                    		aria-expanded=false>Login/Register <span class="caret"></span>
                    	</a>
                    <ul class="dropdown-menu" role="menu">
            			<li><a href="<spring:url value="/login"/>">Add</a></li>
            			<li><a href="<spring:url value="/clients"/>">Register</a></li>
          			</ul>
          			
                    </li>
                    
                </ul>
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>