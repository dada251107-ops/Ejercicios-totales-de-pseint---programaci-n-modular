Funcion edad_usuario<- tomar_edad
	definir edad_cliente como cadena
	escribir "cual es su edad"
	leer edad_usuario
FinFuncion

Funcion mensaje <- crear_saludo(dato_edad)
	
	mensaje<- "la edad del usuario es: " + dato_edad
FinFuncion
Funcion imprimir_saludo (dato_saludo)
	Escribir dato_saludo
FinFuncion
Algoritmo edades 
	dato_edad <- tomar_edad 
	dato_mensaje <- crear_saludo(dato_edad)
	imprimir_saludo(dato_mensaje)
FinAlgoritmo
