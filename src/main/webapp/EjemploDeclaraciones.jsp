<html>
	<body>
		<h1 style="text-align: center">Ejemplo declaraciones</h1>
		
		
		<%!
			
			private int resultado;
		
			public int metodoSuma(int num1, int num2 ){
				resultado = num1 + num2;
				
				return resultado;
			}
			
			public int metodoResta(int num1, int num2 ){
				resultado = num1 - num2;
				
				return resultado;
			}
			
			public int metodoMultiplica(int num1, int num2 ){
				resultado = num1 * num2;
				
				return resultado;
			}
		
		%>
		
		El resultado de la suma es: <%= metodoSuma(5, 8) %>
		
		<br>
		
		El resultado de la resta es: <%= metodoResta(7, 8) %>
		
		<br>
		
		El resultado de la multiplicación es: <%= metodoMultiplica(7, 8) %>
			
	</body>

</html>