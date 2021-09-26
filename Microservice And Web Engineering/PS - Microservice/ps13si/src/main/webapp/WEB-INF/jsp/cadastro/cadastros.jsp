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

<title>PS13SI - Lista de Cadastros</title>
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

						<li class="nav-item"><a class="nav-link active  text-danger"
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

	<section>

		<h1 class=" lead display-5 text-center my-5 ">LISTA DE
			CADASTRADOS</h1>

		<div class="table-responsive mx-5">

			<div>

				<a href="${contextPath}/cadastro/form?page=cadastro-novo">
					<button type="button" class="btn btn-outline-success">

						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                <path
								d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"></path>
            </svg>
						ADICIONAR
					</button>
				</a>

			</div>

			<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path
					d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path
					d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor"
					viewBox="0 0 16 16">
    <path
					d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
  </symbol>
</svg>

			<c:if test="${not empty messages}">
				<div class="alert alert-success d-flex align-items-center my-5"
					role="alert">
					<svg class="bi flex-shrink-0 me-2" width="24" height="24"
						role="img" aria-label="Success:">
						<use xlink:href="#check-circle-fill" /></svg>
					<div>${messages}</div>
				</div>
			</c:if>

			<c:choose>
				<c:when test="${empty cadastros}">
					<div class="alert alert-danger d-flex align-items-center my-5"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Danger:">
										<use xlink:href="#exclamation-triangle-fill" /></svg>
						<div>Não há usuários cadastrados!</div>
					</div>
					<br>
					<br>
				</c:when>
				<c:otherwise>

					<table class="table table-dark table-striped my-2">

						<thead>

							<tr>
								<th scope="col">Nome</th>
								<th scope="col">Senha</th>
								<th scope="col">E-mail</th>
								<th scope="col">CPF</th>
								<th scope="col">Menus</th>
							</tr>

						</thead>

						<tbody>

							<!-- DUPLICA -->

							<c:forEach items="${cadastros}" var="cadastro">

								<tr>
									<!-- colocar para adicionar -->

									<!-- NOME    -->
									<td>${cadastro.nome}</td>
									<!-- SENHA -->
									<td>${cadastro.senha}</td>
									<!-- E-mail -->
									<td>${cadastro.email}</td>
									<!-- CPF -->
									<td>${cadastro.cpf}</td>
									<!-- ABRE MENU -->
									<td class="col"><form:form
											action="${contextPath}/cadastro/${cadastro.id}"
											method="delete">

											<a
												href="${contextPath}/cadastro/form?page=cadastro-editar&id=${cadastro.id}">
												<button type="button" class="btn btn-primary">
													<svg xmlns="http://www.w3.org/2000/svg" width="16"
														height="16" fill="currentColor" class="bi bi-pencil-fill"
														viewBox="0 0 16 16">
                                <path
															d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                                </path>
                            </svg>
													EDITAR
												</button>
											</a>

											<button type="submit" class="btn btn-outline-danger">
												<svg xmlns="http://www.w3.org/2000/svg" width="16"
													height="16" fill="currentColor" class="bi bi-trash-fill"
													viewBox="0 0 16 16">
                                    <path
														d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z">
                                    </path>
                                </svg>
												EXCLUIR
											</button>

										</form:form></td>

									<!-- FECHA MENU -->

								</tr>

							</c:forEach>
							</c:otherwise>
							</c:choose>

							<!-- DUPLICA -->

						</tbody>

					</table>
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