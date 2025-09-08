Algoritmo VentasSemana
    Definir ventas, total Como Real
    Definir i Como Entero
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Escribir "Ingrese las ventas del día ", i, ": "
        Leer ventas
    FinPara
    total <- SumarVentas(ventas)
    Escribir "El total de ventas en la semana es: $", total
FinAlgoritmo

Funcion resultado <- SumarVentas(vector)
    Definir resultado Como Real
    Definir i Como Entero
	
    resultado <- 0
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        resultado <- resultado + vector
    FinPara
FinFuncion
