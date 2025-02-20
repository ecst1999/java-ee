<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, java.sql.*, ecst199.com.jsptags.Empleado" %>

<%

	ArrayList<Empleado> datos = new ArrayList<Empleado>();

	Class.forName("com.mysql.cj.jdbc.Driver");

	try{
		
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "Java1234*");
		
		Statement miStatement = miConexion.createStatement();
		
		String instruccionSQL =  "SELECT * FROM empleados";
		
		ResultSet rs = miStatement.executeQuery(instruccionSQL);
		
		while(rs.next()){
			datos.add(new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
		}
		
		rs.close();
		
		miConexion.close();
		
	}catch(Exception e){
		out.println("Ha ocurrido el error: " + e.getMessage());
	}
	
	pageContext.setAttribute("losEmpleados", datos);

%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Empleados</title>
	</head>
	
	<style>
	
		.cabecera{
			font-weight: bold;
		}

	</style>
	
	<body>
	
		<table border="1">
		
			<tr class="cabecera">
				<td>Nombre</td>
				<td>Apellido</td>
				<td>Puesto</td>
				<td>Salario</td>				
			</tr>
			
			<c:forEach var="empTmp" items="${losEmpleados}">
		
				<tr>
					<td>${empTmp.nombre}</td>
					<td>${empTmp.apellido}</td>
					<td>${empTmp.puesto}</td>
					<td>
<%-- 						<c:if test="${empTmp.salario<40000}">${empTmp.salario + 5000}</c:if> --%>
<%-- 						<c:if test="${empTmp.salario>=40000}">${empTmp.salario}</c:if> --%>
						<c:choose>
						
							<c:when test="${empTmp.salario<40000}">
								${empTmp.salario + 5000}
							</c:when>
							
							<c:when test="${empTmp.salario>40000 && empTmp.salario<=50000}">
								${empTmp.salario + 2000}
							</c:when>
							
							<c:otherwise>
								${empTmp.salario}
							</c:otherwise>
							
						</c:choose>

					</td>					
				</tr>				
			</c:forEach>
		
		</table>
	
		
	
	</body>
</html>


