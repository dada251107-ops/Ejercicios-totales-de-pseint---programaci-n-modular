Algoritmo  CostoTotalTrabajo
    Definir tiempo, tarifa, costoTotal Como Real;
	
    Escribir "Ingrese el tiempo trabajado en horas: ";
    Leer tiempo;
	
    Escribir "Ingrese la tarifa por hora: ";
    Leer tarifa;
    costoTotal <- CalcularCosto(tiempo, tarifa);
	
    Escribir "El costo total es: $", costoTotal;
FinAlgoritmo

Funcion resultado <- CalcularCosto(t, r)
    Definir resultado Como Real;
    resultado <- t * r;
	FinFuncion