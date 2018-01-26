<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Form Page</title>
</head>
<body>

	<!-- adiocina o header a esta pagina -->
	<jsp:include page="fragments/header.jsp"/>
	
	<div class="container">
		<spring:url value="/clients" var="userActionUrl" />
		
		<!-- preciso de testar para ver o que isto faz na realidade mas penso que : faça a ligaçao entre o /clients e o clientForm e os locais onde esteja p userActionUrl -->
		<!-- modelAtribute - faz ligaçao entre o backend e o frontend o clientForm tambem existe no Controller -->
		<!-- method = post significa que que vai enviar dados atraves do metodo POST -->
		<form:form class="form-horizontal" method="post"
			 modelAttribute="clientForm" action="${userActionUrl }">
		
		<form:hidden path="id"/>
		
		<!-- liga o campo nome que esta na classe Client - penso que seja isto -->
		<spring:bind path="name">
			<div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
			<!-- digo a que variavel é que eu quero atribuir os dados -->
				<form:input path="name" type="text" class="form-control" id="name" placeholder="Name"/>
				<!-- caso existam erros no nome - penso que seja isto  -->
				<form:errors path="name" class="control-label"/>
			</div>
			</div>
		</spring:bind>
		
		<!-- Fazer o mesmo que foi feito anteriormente mas para o campo do Email -->
		<spring:bind path="email">
			<div class="form-group ${status.error ? 'has-error' : ''}">
			<label class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
			<!-- estoud a dizer a que varivel que criei na class Clients é que quero atribuir os dados -->
				<form:input path="email" type="text" class="form-control" id="email" placeholder="Email"/>
				<!-- Serve para o teste de erros -->
				<form:errors path="email" class="control-label"/>
			</div>
			</div>	
		</spring:bind>
		
		<!-- Criação do botão -->
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
			<!-- tenho de ver o que isto é  -->
				<c:choose>
				<!-- penso que seja isto -> testa se quem eu estou a introduzir no form é de facto um novo cliente caso não seja ele em vez de add faz update-->
				<!-- isto é basicamente um if then else em jsp é um choose when e otherwhise -->
				<!-- o teste que esta a ser feito é se ele é novo cliente ou não  -->
					<c:when test="${clientForm['newClient']}">
						<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn-lg btn-primary pull-right">Update</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		</form:form>
	</div>
	
	
<!-- adicionar o footer -->
<jsp:include page="fragments/footer.jsp"/>


</body>
</html>