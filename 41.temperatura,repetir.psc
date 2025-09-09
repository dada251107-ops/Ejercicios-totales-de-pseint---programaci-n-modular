Algoritmo  SensorTemperatura
    Definir temp Como Real
    
    Repetir
        temp <- LeerTemperatura
        VerificarTemperatura(temp)
    Hasta Que temp >= 18 Y temp <= 25
    
    Escribir "? La temperatura está dentro del rango aceptable (18°C - 25°C)."
    Escribir "Sistema estable. Fin del programa."
FinAlgoritmo


Funcion temp <- LeerTemperatura
    Definir temp Como Real
    Escribir "Ingrese la temperatura actual en °C: "
    Leer temp
FinFuncion

Funcion  VerificarTemperatura(temp)
    Si temp < 18 Entonces
        Escribir "?? Alerta: Temperatura muy baja (", temp, "°C)."
    SiNo
        Si temp > 25 Entonces
            Escribir "?? Alerta: Temperatura muy alta (", temp, "°C)."
        SiNo
            Escribir "? La temperatura (", temp, "°C) está en el rango aceptable."
        FinSi
    FinSi
FinFuncion
