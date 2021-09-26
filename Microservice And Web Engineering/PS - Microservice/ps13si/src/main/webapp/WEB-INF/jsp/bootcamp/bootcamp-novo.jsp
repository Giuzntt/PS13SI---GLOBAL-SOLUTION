<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="pt-BR">

<head>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${contextPath}/css/style.css">
<link rel="shortcurt icon" href="${contextPath}/images/logo.png" type="">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Oswald:wght@300;400;700&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>PS13SI - Adicionar Bootcamp</title>

</head>

<body>

	<header>

		<nav class="navbar navbar-expand-sm navbar-dark header ">

			<div class="container-fluid">

				<a class="navbar-brand" href="${contextPath}/inicio"><img
					src="${contextPath}/images/logo.png" alt=""></a>

				<button class="navbar-toggler   bg-danger" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-md-end"
					id="navbarNav">

					<ul class=" navbar-nav nav ">

						<li class="nav-item "><a class="nav-link text-muted"
							aria-current="page" href="${contextPath}/inicio">Início</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/cadastro">Lista de Cadastros</a></li>

						<li class="nav-item"><a class="nav-link active  text-danger"
							href="${contextPath}/bootcamp">Bootcamps</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/fale-conosco">Fale Conosco</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/" tabindex="-1" aria-disabled="true">Sair</a></li>

					</ul>

				</div>

			</div>

		</nav>

	</header>

	<section>

		<main class="container my-5">

			<!-- DIV PAI -->
			<div class="bg-dark p-5 rounded">

				<!-- FORMULARIO -->
				<h1 class="text-center text-light">Cadastre o Bootcamp</h1>

				<form:form modelAttribute="bootcampModel"
					action="${contextPath}/bootcamp" method="post">

					<spring:hasBindErrors name="bootcampModel">
						<div class="alert alert-danger" role="alert">
							<font color="red"><form:errors path="*" class="has-error" /></font>
						</div>
					</spring:hasBindErrors>

					<br>

					<div class="mb-3">

						<label for="nome_bootcamp" class="form-label"><h4
								class="text-light">Nome do Bootcamp</h4></label>

						<form:input type="text" path="nome_bootcamp" id="nome_bootcamp"
							class="form-control" maxlength="50" size="50"
							placeholder="Digite o nome do Bootcamp" />

						<font color="red"><form:errors path="nome_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="empresa_bootcamp" class="form-label"><h4
								class="text-light">Nome da Empresa</h4></label>

						<form:input type="text" path="empresa_bootcamp"
							id="empresa_bootcamp" class="form-control" maxlength="50"
							size="50" placeholder="Digite a empresa contratante" />

						<font color="red"><form:errors path="empresa_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="num_participantes_bootcamp" class="form-label"><h4
								class="text-light">Número de Participantes</h4></label>

						<form:input type="number" path="num_participantes_bootcamp"
							id="num_participantes_bootcamp" class="form-control"
							placeholder="Digite a número de participantes" />

						<font color="red"><form:errors
								path="num_participantes_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="preco_bootcamp" class="form-label"><h4
								class="text-light">Preço por Pessoas (R$)</h4></label>

						<form:input type="number" step="0.01" id="preco_bootcamp"
							path="preco_bootcamp" class="form-control"
							placeholder="Digite o preço por pessoa" />

						<font color="red"><form:errors path="preco_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="profs_bootcamp" class="form-label"><h4
								class="text-light">Professores</h4></label>

						<form:input type="text" path="profs_bootcamp" id="profs_bootcamp"
							class="form-control" maxlength="250" size="250"
							placeholder="Digite o(s) professor(es)" />

						<font color="red"><form:errors path="profs_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="local_bootcamp" class="form-label"><h4
								class="text-light">Local</h4></label>

						<form:input type="text" path="local_bootcamp" id="local_bootcamp"
							class="form-control" maxlength="150" size="150"
							placeholder="Digite o local" />

						<font color="red"><form:errors path="local_bootcamp" /></font><br />

					</div>

					<div class="mb-3">

						<label for="detalhes_bootcamp" class="form-label"><h4
								class="text-light">Detalhes</h4></label>

						<form:textarea class="form-control" path="detalhes_bootcamp"
							rows="3" cols="100"
							placeholder="Digite uma descrição para o bootcamp" />

						<font color="red"><form:errors path="detalhes_bootcamp" /></font><br />

					</div>

					<div class="d-grid gap-2 pt-5 mb-2 mx-auto">

						<button class="btn btn-secondary" type="submit">
							CADASTRAR</button>

					</div>

					<a href="${contextPath}/bootcamp" class="text-decoration-none">

						<div class="d-grid gap-2 mx-auto">

							<button class="btn btn-danger my-1" type="button">VOLTAR</button>

						</div>

					</a>

				</form:form>

				<!-- FORMULARIO -->
			</div>

			<!-- DIV PAI -->
		</main>

	</section>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>

</html>