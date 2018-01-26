<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Error Login Page</title>


<!-- html and css href -->
<!-- request.getContextPath() -> indica o endereço principal da aplicaçao -->
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/bootstrap.min.css" rel="stylesheet"/>

<link type="text/css" href="<%=request.getContextPath()%>/resources/core/js/bootstrap.min.js" rel="stylesheet"/>

<!-- Custom css and js-->
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/css/hello.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/core/js/hello.js.js" rel="stylesheet"/>


</head>
<body>

<br>
<h2><img class="profile-img" src="<%=request.getContextPath() %>/resources/img/black_tree.jpg" alt="">BlackForest / Serviço de Gestão de Contas</h2>

<div class="form-group">
	<div class="col-sm-5">
		<span class="help-block">O Serviço de Gestão não sucesso na verficação do seu utilizador e/ou password. Por favor, tente novamente. <br><br>
			Caso o problema persista, entre em contacto atraves do email: helpdesk@blackforest.com</span>
	</div>
</div>



</body>
</html>