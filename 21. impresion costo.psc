Algoritmo  CostoImpresion
    Definir paginas Como Entero;
    Definir precioPorPagina, totalPagar Como Real;
	
    // Solicitar datos al usuario
    Escribir "Ingrese la cantidad de p�ginas a imprimir: ";
    Leer paginas;
    Escribir "Ingrese el precio por p�gina: ";
    Leer precioPorPagina;
	
    // Calcular el costo total usando la funci�n
    totalPagar <- CalcularCosto(paginas, precioPorPagina);
	
    // Mostrar resultado
    Escribir "==============================";
    Escribir "El costo total de impresi�n es: $", totalPagar;
    Escribir "==============================";
FinAlgoritmo

// Funci�n que calcula el costo total
Funcion resultado <- CalcularCosto(paginas, precio)
    Definir resultado Como Real;
    resultado <- paginas * precio;
	FinFuncion