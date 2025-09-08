Proceso ConversionTemperatura
    Definir celsius, fahrenheit Como Real;
    Escribir "Ingrese la temperatura en grados Celsius: ";
    Leer celsius;
    fahrenheit <- ConvertirAFahrenheit(celsius);
	
    Escribir "La temperatura en Fahrenheit es: ", fahrenheit;
FinProceso

Funcion resultado <- ConvertirAFahrenheit(celsius)
    Definir resultado Como Real;
    resultado <- (celsius * 9/5) + 32;
	FinFuncion