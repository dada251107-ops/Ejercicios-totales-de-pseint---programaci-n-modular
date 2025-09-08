Algoritmo  CostoImpresion
    Definir paginas Como Entero;
    Definir precioPorPagina, totalPagar Como Real;
	
    // Solicitar datos al usuario
    Escribir "Ingrese la cantidad de páginas a imprimir: ";
    Leer paginas;
    Escribir "Ingrese el precio por página: ";
    Leer precioPorPagina;
	
    // Calcular el costo total usando la función
    totalPagar <- CalcularCosto(paginas, precioPorPagina);
	
    // Mostrar resultado
    Escribir "==============================";
    Escribir "El costo total de impresión es: $", totalPagar;
    Escribir "==============================";
FinAlgoritmo

// Función que calcula el costo total
Funcion resultado <- CalcularCosto(paginas, precio)
    Definir resultado Como Real;
    resultado <- paginas * precio;
	FinFuncion