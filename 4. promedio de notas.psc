Algoritmo promedio_notas 
	definir promedio como real
	promedio <- calcularpromedio;
	mostrarresultado(promedio);
FinAlgoritmo

funcion promedio<- calcularpromedio
	definir nota1, nota2, nota3, promedio Como Real;
	Escribir "ingrese la nota de la primera materia"
	leer nota1
	Escribir "ingrese la nota de la segunda materia"
	leer nota2
	Escribir "ingrese la notade la tercera materia"
	leer nota3
	
	promedio <- (nota1 + nota2 + nota3)/3
FinFuncion

Funcion mostrarresultado(promedio)
	Escribir "el promedio d las 3 materias es: ", promedio; 
FinFuncion
	