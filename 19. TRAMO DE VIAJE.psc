Algoritmo  TiempoDeViaje
    Definir n, i Como Entero;
    Definir tiempoParcial, tiempoTotal Como Real;
	
    Escribir "¿Cuántos tramos de viaje desea registrar?: ";
    Leer n;
	
    tiempoTotal <- 0;
	
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese el tiempo del tramo ", i, " (en horas): ";
        Leer tiempoParcial;
        tiempoTotal <- SumarTiempo(tiempoTotal, tiempoParcial);
    FinPara
	
    Escribir "==============================";
    Escribir "El tiempo total de viaje es: ", tiempoTotal, " horas.";
    Escribir "==============================";
FinAlgoritmo

// Función para sumar tiempos parciales
Funcion resultado <- SumarTiempo(acumulado, parcial)
    Definir resultado Como Real;
    resultado <- acumulado + parcial;
FinFuncion
