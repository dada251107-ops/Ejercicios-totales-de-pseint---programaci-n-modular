Proceso CaloriasSemana
    Definir dia, caloriasDia, totalSemana Como Entero;
	
    totalSemana <- 0;
	
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        caloriasDia <- CalcularCaloriasDia();
        Escribir "Calor�as consumidas en el d�a ", dia, ": ", caloriasDia;
        totalSemana <- totalSemana + caloriasDia;
    FinPara
	
    
    MostrarTotalSemana(totalSemana);
FinProceso


Funcion totalDia <- CalcularCaloriasDia
    Definir comidas, i, calorias, totalDia Como Entero;
	
    totalDia <- 0;
    Escribir "�Cu�ntas comidas realiz� hoy?: ";
    Leer comidas;
	
    Para i <- 1 Hasta comidas Con Paso 1 Hacer
        Escribir "Ingrese las calor�as de la comida ", i, ": ";
        Leer calorias;
        totalDia <- totalDia + calorias;
    FinPara
FinFuncion


Funcion MostrarTotalSemana(total)
    Escribir "El total de calor�as consumidas en la semana es: ", total;
FinFuncion
