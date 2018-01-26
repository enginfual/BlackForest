

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
	<hr>
	<footer class="container text-center">
		<p>&copy; BlackForest Shop 2018</p>
	</footer>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>