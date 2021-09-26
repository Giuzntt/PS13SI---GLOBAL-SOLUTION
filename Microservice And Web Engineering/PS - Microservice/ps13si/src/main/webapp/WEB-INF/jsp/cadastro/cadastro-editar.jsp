<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<head>

<title>PS13SI - Editar Cadastro</title>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/login.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a81368914c.js"></script>
<link rel="shortcurt icon" href="${contextPath}/images/logo.png"
	type="${contextPath}/images/tce-logo2.png">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>

	<img class="wave" src="${contextPath}/images/wave.png">

	<div class="container">

		<div class="img">
			<img src="${contextPath}/images/background.svg">
		</div>

		<div class="login-content">

			<form:form modelAttribute="cadastroModel"
				action="${contextPath}/cadastro/${cadastroModel.id}" method="put">

				<img src="${contextPath}/images/logo.png">

				<h2 class="title">Revise os dados</h2>

				<spring:hasBindErrors name="cadastroModel">
					<div class="alert alert-danger" role="alert">
						<font color="red"><form:errors path="*" class="has-error" /></font>
					</div>
				</spring:hasBindErrors>

				<div class="input-div one">

					<div class="i">
						<i class="fas fa-user"></i>
					</div>

					<div class="div">
						<h5>
							<label class="control-label" for="nome">Nome de usuário</label>
						</h5>
						<form:input type="text" path="nome" id="nome" class="input"
							maxlength="50" size="50" />
					</div>

				</div>

				<div class="input-div pass">

					<div class="i">
						<i class="fas fa-lock"></i>
					</div>

					<div class="div">
						<h5>
							<label class="control-label" for="senha">Senha</label>
						</h5>
						<form:input type="password" path="senha" id="senha" class="input"
							maxlength="50" size="50" />
					</div>

				</div>

				<div class="input-div ">

					<div class="i">
						<i class="fas fa-envelope"></i>
					</div>

					<div class="div">
						<h5>
							<label class="control-label" for="email">E-mail</label>
						</h5>
						<form:input type="email" path="email" id="email" class="input"
							maxlength="70" size="70" />
					</div>

				</div>

				<div class="input-div ">

					<div class="i">
						<i class="fas fa-id-card-alt"></i>
					</div>

					<div class="div">
						<h5>
							<label class="control-label" for="cpf">CPF</label>
						</h5>
						<form:input type="text" path="cpf" id="cpf" class="input"
							maxlength="11" size="11" />
					</div>

				</div>

				<a href="${contextPath}/cadastro"> Clique aqui para voltar...</a>
				<input type="submit" class="btn" value="SALVAR">

			</form:form>

		</div>

	</div>

	<script type="text/javascript" src="${contextPath}/js/main.js"></script>

</body>

</html>