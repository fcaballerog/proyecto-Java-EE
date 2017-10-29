<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/WebContent/css/principal.css">
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/WebContent/css/form_principal.css" media="all">
	<script type="text/javascript" src="<%=request.getContextPath()%>/WebContent/js/form_principal.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body id="main_body">
		<!-- 
		<form method="post"	action="<%=request.getContextPath()%>/principal/autentificacion">
		<input type="text" name="usuario" /> 
		<input type="password" name="clave" /> 
		<input type="submit" /> <img id="top"/>
		-->

		<img id="top" src="<%=request.getContextPath()%>/img/top.png" alt="">
		<div id="form_container">
			<h1><a>inicio</a></h1>
			<form id="form_56264" class="appnitro" method="post" action="<%=request.getContextPath()%>/principal/Autentificacion">
				<div class="form_description">
					<p>Autentificacion</p>
				</div>
				<ul>
					<li id="li_1">
						<label class="description" for="element_1">Instalador</label>
						<div>
							<input id="element_1" name="usuario" class="element text medium" type="text" maxlength="255" value="" />
						</div>
					</li>
					<li id="li_2">
						<label class="description" for="element_2">Nº de Carnet</label>
						<div>
							<input id="element_2" name="clave" class="element text medium" type="password" maxlength="255" value="" />
						</div>
					</li>
					<li class="buttons">
						<input type="hidden" name="form_id"	value="56264" /> 
						<input id="saveForm" class="button_text" type="submit" name="submit" value="Entrar"/>
					</li>
				</ul>
			</form>
			<div id="footer">
				
			</div>
		</div>
		<img id="bottom" src="<%=request.getContextPath()%>/img/bottom.png" alt="">
</body>
</html>