<html>

	<body>

		<h2>Objetos predefinidos JSP</h2>
		
		Petici�n datos del navegador: <%= request.getHeader("User-Agent") %>
		
		<br><br>
		
		Petici�n de idioma utilizado <%= request.getLocale() %>
	
	</body>


</html>