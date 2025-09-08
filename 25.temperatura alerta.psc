Proceso SensorTemperaturaUmbral
    Definir temperatura, umbral Como Real
    temperatura <- PedirTemperatura
    umbral <- PedirUmbral
    
    VerificarTemperatura(temperatura, umbral)
FinProceso

Funcion valor <- PedirTemperatura
    Definir valor Como Real
    Escribir "Ingrese la temperatura actual (°C): "
    Leer valor
FinFuncion

Funcion limite <- PedirUmbral
    Definir limite Como Real
    Escribir "Ingrese el umbral de alerta (°C): "
    Leer limite
FinFuncion

SubProceso VerificarTemperatura(temp, umbral)
    Si temp > umbral Entonces
        Escribir "?? ALERTA: La temperatura ", temp, " °C supera el umbral de ", umbral, " °C."
    SiNo
        Escribir "? La temperatura es normal: ", temp, " °C."
    FinSi
FinSubProceso