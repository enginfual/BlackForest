
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Penso que seja como os botoes vao funcionar nas paginas html / jsp -->


<!DOCTYPE html>
<html lang="en">

<!-- chama o jsp do para o top desta pagina -->
<jsp:include page="fragments/header.jsp" />



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clients page</title>
</head>
<body>

	<div class="container">

		<h1>All Clients</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>Name</th>
					<th>Email</th>
				</tr>
			</thead>

			<!-- c:forEach permite iterar como se fosse um ciclo no java - um array neste caso -->
			<c:forEach var="client" items="${clients}">
				<tr>
					<td>${client.id }</td>
					<td>${client.name }</td>
					<td>${client.email }</td>
					<td>
						<!-- faz uma ligação entre o url /clients/ e o client.id e  variavel userUrl -->
						<!-- por outras palavras aceder de forma simples aceder aos atributos do objecto que foi previamente carregado con Controller -->
						<spring:url value="/clients/${clients.id}" var="userUrl" /> 
						<spring:url value="/clients/${clients.id}/delete" var="deleteUrl" /> 
						<spring:url value="/clients/${clients.id}/update" var="updateUrl" />
						 
						<!-- liga o butão á varivel userUrl e ao client.id -->
						<button class="btn btn-info" onclick="location.href='${userUrl}'">Query</button>
						<!-- liga o butão á varivel updateUrl e ao client.id -->
						<button class="btn btn-primary" onclick="location.href='${updateUrl}'">Update</button>
						<!-- liga o butão á varivel deleteUrl e ao client.id -->
						<button class="btn btn-danger" onclick="this.disabled=true;post('${deleteUrl}')">Delete</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	
	<!-- Adiciona o footer -->
	
	<jsp:include page="fragments/footer.jsp"/>




</body>
</html>