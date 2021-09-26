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
<link rel="shortcurt icon" href="${contextPath}/images/logo.png">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Oswald:wght@300;400;700&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>PS13SI - Fale Conosco</title>

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

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/bootcamp">Bootcamps</a></li>

						<li class="nav-item"><a class="nav-link active  text-danger"
							href="${contextPath}/fale-conosco">Fale Conosco</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/" tabindex="-1" aria-disabled="true">Sair</a></li>

					</ul>

				</div>

			</div>

		</nav>

	</header>

	<main class="container my-5">

		<div class="bg-light p-5 rounded">

			<section id="texto2" class="d-block px-2 mx-auto my-5">

				<div class=" ">

					<div class="mx-auto">

						<h1 class="text-center  my-3">Fale Conosco:</h1>

						<p class="lead text-justify">Conte com a gente sempre. Se
							tiver dúvidas ou precisar de informações, entre em contato!</p>

					</div>

					<div class="row row-cols-1 row-cols-md-2 g-4">

						<!-- DUPLICA -->

						<div class="col">

							<div class="card">

								<img src="${contextPath}/images/regionais.png"
									class="card-img-top" alt="...">

								<div class="card-body">

									<h5 class="card-title">Atendimento Presencial</h5>

									<p class=" lead card-text">
										Encontre-nos presencialmente em nossa sede. <br> <br>
										<br> <br> <br>

									</p>

									<p class="card-text end">
										<a href="https://www.google.com.br/maps"
											class="btn btn-outline-danger">Mais...</a>

									</p>

								</div>

							</div>

						</div>

						<!-- DUPLICA -->

						<!-- DUPLICA -->

						<div class="col">

							<div class="card">

								<img src="${contextPath}/images/ouvidoria.png"
									class="card-img-top" alt="...">

								<div class="card-body">

									<h5 class="card-title">Atendimento</h5>

									<p class="  lead card-text">Mande-nos uma mensagem pelo
										link abaixo.</p>

									<p class="card-text end">

										<a href="#" class="btn btn-outline-danger">Mais...</a>

									</p>

								</div>

							</div>

						</div>

						<div class="col">

							<div class="card">

								<img src="${contextPath}/images/contatos.png"
									class="card-img-top" alt="...">

								<div class="card-body">

									<h5 class="card-title">Outros Contatos</h5>

									<h5 class="card-title">Telefone:</h5>
									<p class=" lead card-text end">+55 11 9999 9999</p>
									<h5 class="card-title">WhatsApp:</h5>
									<p class="card-text end">

										<a class=" text-decoration-none text-danger"
											href="https://api.whatsapp.com/send?1=pt_BR&phone=5511901010101">+55
											11 90101-0101</a>

									</p>
									<h5 class="card-title">Email para contato:</h5>
									<p class="lead card-text end">contato@ps13si.com.br</p>

								</div>

							</div>

						</div>

						<div class="col"></div>

						<!-- DUPLICA -->

					</div>
			</section>

		</div>

	</main>

	<div id="" class=" container-fluid "></div>

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