
Proceso SensorTemperatura
    Definir temperatura Como Real
    temperatura <- PedirTemperatura
    VerificarTemperatura(temperatura)
FinProceso

Funcion valor <- PedirTemperatura
    Definir valor Como Real
    Escribir "Ingrese la temperatura actual (°C): "
    Leer valor
FinFuncion

SubProceso VerificarTemperatura(temp)
    Si temp >= 18 Y temp <= 25 Entonces
        Escribir "? La temperatura es adecuada: ", temp, " °C."
    SiNo
        Escribir "?? La temperatura está fuera del rango deseado (18°C - 25°C)."
    FinSi
FinSubProceso