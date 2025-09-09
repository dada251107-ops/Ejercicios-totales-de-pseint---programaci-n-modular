Algoritmo  CuentaRegresiva
    Definir numero, opcion Como Entero
    Definir n Como Entero
    opcion_ <- 1
    
    Mientras opcion_ = 1 Hacer
        // Pedir número inicial al usuario
        numero <- PedirNumero
        
        // Hacer la cuenta regresiva
        HacerCuentaRegresiva(numero)
        
        // Preguntar si desea repetir
        opcion_ <- Continuar
    FinMientras
    
    Escribir "Programa finalizado."
FinAlgoritmo


Funcion  resultado <- PedirNumero
    Definir resultado Como Entero
    Escribir "Ingrese un número entero positivo: "
    Leer resultado
FinFuncion

Funcion  HacerCuentaRegresiva(n)
    Mientras n >= 0 Hacer
        Escribir n
        n <- n - 1
    FinMientras
    Escribir "¡Tiempo cumplido!"
FinFuncion

Funcion  resultado <- Continuar
    Definir resultado Como Entero
    Escribir "¿Desea hacer otra cuenta regresiva? (1 = Sí, 0 = No): "
    Leer resultado
FinFuncion
