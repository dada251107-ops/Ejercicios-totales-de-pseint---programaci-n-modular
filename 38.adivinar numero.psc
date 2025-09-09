Algoritmo  JuegoAdivinanza
    Definir numeroSecreto, intento Como Entero
    numeroSecreto <- Aleatorio(1,20)
    AdivinarNumero(numeroSecreto)
FinAlgoritmo
Funcion  AdivinarNumero(numeroSecreto)
    Definir intento Como Entero
    
    Escribir "He pensado un número entre 1 y 20..."
    Escribir "¡Intenta adivinarlo!"
    
    Leer intento
    
    Mientras intento <> numeroSecreto Hacer
        DarPista(intento, numeroSecreto)
        Leer intento
    FinMientras
    
    Escribir "¡Felicidades! Adivinaste el número secreto: ", numeroSecreto
FinFuncion

Funcion DarPista(intento, numeroSecreto)
    Si intento < numeroSecreto Entonces
        Escribir "El número secreto es MAYOR que ", intento
    SiNo
        Escribir "El número secreto es MENOR que ", intento
    FinSi
FinFuncion
