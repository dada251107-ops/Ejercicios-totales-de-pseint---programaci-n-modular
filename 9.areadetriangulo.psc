Algoritmo AreaTriangulo
	definir base, altura, area como real;
	escribir"ingrese la base de el triangulo"
	leer base
	escribir "ingrese la altura del triangulo: ";
	leer altura
	
	area<- calcularArea(base, altura)
	
	Escribir "el area del triangulo es: ",area;
FinAlgoritmo
Funcion resultado <- calcularArea(base,altura)
	definir resultado Como Real
	resultado<-(base * altura)/2;
FinFuncion
	