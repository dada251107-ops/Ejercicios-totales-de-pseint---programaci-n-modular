Algoritmo  SumarCincoNumeros
    Definir suma Como Real;
    suma <- CalcularSuma;

    MostrarResultado(suma);
FinAlgoritmo

Funcion total <- CalcularSuma
    Definir i Como Entero;
    Definir numero, total Como Real;
    total <- 0;
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ": ";
        Leer numero;
        total <- total + numero;
    FinPara
FinFuncion
Funcion  MostrarResultado(suma)
    Escribir "La suma de los 5 números es: ", suma;
FinFuncion
