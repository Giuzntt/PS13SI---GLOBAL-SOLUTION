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

<title>PS13SI - Bootcamp Ver Mais</title>

</head>

<body>

	<header>

		<nav class="navbar navbar-expand-sm navbar-dark header ">

			<div class="container-fluid">

				<a class="navbar-brand" href="#"><img
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

			<div class="bg-light p-5 rounded">

				<!-- VER CARD -->
				<div class="card">

					<div class="card-header text-center  text-light bg-dark">
						<h1>Saiba aqui mais informações sobre o Bootcamp</h1>
					</div>

					<div class="card-body bg-secondary">

						<p class="card-text">
						<ul>

							<li><h3 class="text-light">Nome do Bootcamp:</h3>
								<p class="lead text-light">${bootcamp.nome_bootcamp}</p></li>

							<li><h3 class="text-light">Empresa Contratante:</h3>
								<p class="lead text-light">${bootcamp.empresa_bootcamp}</p></li>

							<li><h3 class="text-light">Número de Participantes:</h3>
								<p class="lead text-light">${bootcamp.num_participantes_bootcamp}</p></li>

							<li><h3 class="text-light">Preço por pessoa (R$):</h3>
								<p class="lead text-light">${bootcamp.preco_bootcamp}</p></li>

							<li><h3 class="text-light">Professores:</h3>
								<p class="lead text-light">${bootcamp.profs_bootcamp}</p></li>

							<li><h3 class="text-light">Local:</h3>
								<p class="lead text-light">${bootcamp.local_bootcamp}</p></li>

							<li><h3 class="text-light">Detalhes:</h3>
								<p class="lead text-light">${bootcamp.detalhes_bootcamp}</p></li>

						</ul>

						</p>

						<div class="d-grid gap-2  justify-content-md-end">

							<a href="${contextPath}/bootcamp">
								<button class="btn btn-danger " type="button">VOLTAR</button>
							</a>

						</div>

					</div>

				</div>

			</div>

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