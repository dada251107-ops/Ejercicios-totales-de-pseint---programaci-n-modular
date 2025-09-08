Proceso CampeonatoDeportivo
    Definir resultado Como Cadena
    Definir puntosEquipo Como Entero
    
    puntosEquipo <- 0
    
    resultado <- PedirResultado
    puntosEquipo <- CalcularPuntos(resultado)
    MostrarClasificacion(resultado, puntosEquipo)
FinProceso

Funcion res <- PedirResultado
    Definir res Como Cadena
    Escribir "Ingrese el resultado del partido (G = Ganado, P = Perdido, E = Empatado): "
    Leer res
    res <- Mayusculas(res)
FinFuncion

Funcion puntos <- CalcularPuntos(resultado)
    Definir puntos Como Entero
    
    Segun resultado Hacer
        "G":
            puntos <- 3
        "E":
            puntos <- 1
        "P":
            puntos <- 0
        De Otro Modo:
            Escribir "Resultado inválido. No se suman puntos."
            puntos <- 0
    FinSegun
FinFuncion

SubProceso MostrarClasificacion(resultado, puntos)
    Escribir "-----------------------------------"
    Escribir "Resultado del partido: ", resultado
    Escribir "Puntos obtenidos en este partido: ", puntos
    Escribir "Clasificación actualizada."
    Escribir "-----------------------------------"
FinSubProceso