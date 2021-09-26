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
<link
	href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Oswald:wght@300;400;700&display=swap"
	rel="stylesheet">
<link rel="shortcurt icon" href="${contextPath}/images/logo.png"
	type="${contextPath}/images/tce-logo2.png">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>PS13SI - Início</title>

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

						<li class="nav-item "><a class="nav-link active  text-danger"
							aria-current="page" href="${contextPath}/inicio">Início</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
							href="${contextPath}/cadastro">Lista de Cadastros</a></li>

						<li class="nav-item"><a class="nav-link text-muted"
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
	<div class="background-6">
		<div id="orobo" class="container ">

			<section id="texto2" class="row my-5 bd-highlight">

				<div class="col-12  col-md-6">
					<img src="${contextPath}/images/fundo.png" class=" img-fluid  "
						alt="..."> <img src="${contextPath}/images/fundonockup.png"
						class=" img-fluid  py-5 my-5" alt="...">
				</div>

				<div
					class="col-12   col-sm-12 col-md-6 d-flex align-content-center flex-wrap">

					<h1 class="text-center  my-3">Sobre a PS13SI</h1>
					<p class="lead text-justify">Enquanto a população mundial e
						muitas organizações sofriam com as agruras decorrentes do estado
						Pandemia imposto pela doença do coronavírus COVID 19, um grupo de
						estudantes destemidos (e isolados em suas residências), ávidos por
						colocar seus conhecimentos em prática e empreender, aproveitava
						uma série de novas oportunidades que se apresentavam a cada dia.
						Depois de um ano de pesquisa criteriosa de mercado, muito
						planejamento e desenvolvimento, concretizaram no início de 2021 o
						sonho de uma startup: a PS13SI. Esses somos nós.</p>


					<p class="lead text-justify">Desenvolvemos um modelo de
						negócios extremamente inovador e que vem ao encontro do desejo das
						pessoas que sonhavam com tempos melhores, apesar das circuntâncias
						vigentes no mundo atual. O modelo de negócios da PS13SI consiste
						na criação e formação de BootCamps para pequenas, médias e grandes
						empresas de tecnologia da América Latina. As especialidades são
						diversas, mas no momento estamos focando nas áreas de User
						Experience, Design, Desenvolvimento Back-end, Desenvolvimento
						Front-end, Desenvolvimento Mobile, DevOps, DevSecOps, Machine
						Learning, Inteligência Artificial e outras.</p>

					<p class="lead text-justify">Nossas atividades envolvem a
						criação do plano de treinamento, elaboração do conteúdo,
						contratação de professores, configuração do espaço físico, triagem
						de candidatos, validação de conhecimento, coach de carreira e
						recrutamento / direcionamento para o mercado de trabalho.</p>

					<p class="lead text-justify">Caso você tenha uma empresa de
						qualquer tamanho e tenha se interessado em nossos serviços, entre
						em contato conosco. Você pode encontrar nossos contatos na aba
						"Fale Conosco" no menu na parte superior da tela.</p>

					<p class="lead text-justify">Nós, da PS13SI, esperamos que você
						aprecie nossos serviços e que possamos todos superar os tempos
						atuais e criar um mundo através do ensinamento, estudo,
						treinamento, trabalho em equipe e é claro, da TECNOLOGIA!</p>

				</div>

			</section>

		</div>

	</div>

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