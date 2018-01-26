<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
<!-- html and css href -->
<!-- request.getContextPath() -> indica o endere�o principal da aplica�ao -->
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/bootstrap.css" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/js/bootstrap.js" rel="stylesheet"/>


</head>
<body>

	<!-- J� n�o se usa -->
	<center><h2>BlackForest / Servi�o de Autentica��o</h2></center>
	
	<div class="container">
		<div class="row">
		
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<h1 class="text-center login-title">Fa�a Login com a sua conta</h1>
				<div class="account-wall">
					<img class="profile-img" src"<%=request.getContextPath() %>/resources/img/black_tree.jpg" alt="">
					<!-- prestar aten�ao ao nome e a action neste form -->
					<!-- recebe os dados do utilizador e cria uma sess�o -->
					<form action="form-signin" name='loginForm' action = 'j_spring_security_check' method="POST"></form>
					<!-- aqui o que pode ser de importante � o placeholder e o required autofoucus name -->
					<input type="text" class="form-control" placeholder="BlackForest User" required autofocus name='username'>
					<!-- para aqui a mesma logica prestar anten��o ao placeholder e ao required name -->
					<input type="password" class="form-control" placeholder="Password" required name='password'>
					<button class="btn btn-lg btn-primary btn-block" type="submit">
						Sign in</button>
					<!-- ver de onde v�m as variaveis que estao a ser chamadas no nome e no value -->
					<!-- o crsf gere a ses�o do utilizador -->
					<input class="hidden" name="${_crsf.parameterName }" value="${_crsf.token }">
				</div>
			</div>
		</div>
	</div>

</body>
</html>