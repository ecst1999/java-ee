<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Ejemplo Functions</title>
	</head>
	<body>
	
		<c:set var="datos" value="Ana, López, Directora, 75000" />
		
		<c:set var="datosArray" value="${fn:split(datos, ',') }"/>
		
		<input type="text" value="${datosArray[0]}"/> <br>
		<input type="text" value="${datosArray[1]}"/> <br>
		<input type="text" value="${datosArray[2]}"/> <br>
		<input type="text" value="${datosArray[3]}"/> 
	
	</body>
</html>