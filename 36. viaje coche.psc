
Proceso ViajeEnCoche
    Definir distancia, velocidad, tiempo, opcion_ Como Real
    
    Mostrar "=== Simulación de viajes en coche ==="
    
    opcion_ <- 1
    Mientras opcion_ = 1 Hacer
        distancia <- PedirDistancia
        velocidad <- PedirVelocidad
        
        tiempo <- CalcularTiempo(distancia, velocidad)
        
        Mostrar "La distancia del viaje es: ", distancia, " km"
        Mostrar "La velocidad promedio es: ", velocidad, " km/h"
        Mostrar "El tiempo estimado de viaje es: ", tiempo, " horas."
        
        opcion_ <- Continuar
    FinMientras
    
    Mostrar "Programa finalizado. ¡Buen viaje!"
FinAlgoritmo


Funcion  resultado <- PedirDistancia
    Definir resultado Como Real
    Escribir "Ingrese la distancia total del viaje (en km): "
    Leer resultado
FinFuncion

Funcion  resultado <- PedirVelocidad
    Definir resultado Como Real
    Escribir "Ingrese la velocidad promedio del coche (en km/h): "
    Leer resultado
FinFuncion
Funcion  resultado <- CalcularTiempo(distancia, velocidad)
    Definir resultado Como Real
    resultado <- distancia / velocidad
FinFuncion
Funcion  resultado <- Continuar
    Definir resultado Como Entero
    Escribir "¿Desea simular otro viaje? (1 = Sí, 0 = No): "
    Leer resultado
FinFuncion