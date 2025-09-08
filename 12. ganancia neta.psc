Algoritmo  GananciaNeta
    Definir ingresos, gastos, ganancia Como Real
    Escribir "Ingrese los ingresos totales: "
    Leer ingresos
    Escribir "Ingrese los gastos totales: "
    Leer gastos
	
    ganancia <- CalcularGanancia(ingresos, gastos)
	
    Escribir "La ganancia neta es: $", ganancia
FinAlgoritmo


Funcion resultado <- CalcularGanancia(ingresos, gastos)
    Definir resultado Como Real
    resultado <- ingresos - gastos
FinFuncion