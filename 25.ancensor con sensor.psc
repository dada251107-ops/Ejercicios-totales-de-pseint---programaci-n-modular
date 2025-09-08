Proceso AscensorConSensor
    Definir pisoDeseado Como Entero
    Definir temperatura Como Real
    temperatura <- PedirTemperatura
    Si EsTemperaturaAdecuada(temperatura) Entonces
        pisoDeseado <- PedirPiso()
        VerificarPiso(pisoDeseado)
    SiNo
        Escribir "?? La temperatura no es adecuada (18°C - 25°C)."
        Escribir "El ascensor no puede moverse."
    FinSi
FinProceso
Funcion valor <- PedirTemperatura
    Definir valor Como Real
    Escribir "Ingrese la temperatura actual (°C): "
    Leer valor
FinFuncion

Funcion resultado <- EsTemperaturaAdecuada(temp)
    Definir resultado Como Logico
    Si temp >= 18 Y temp <= 25 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion piso <- PedirPiso
    Definir piso Como Entero
    Escribir "Ingrese el piso al que desea ir (1 a 10): "
    Leer piso
FinFuncion
SubProceso VerificarPiso(piso)
    Si piso >= 1 Y piso <= 10 Entonces
        Escribir "? Ascensor moviéndose al piso ", piso
    SiNo
        Escribir "? Error: Piso inválido. El rango es de 1 a 10."
    FinSi
FinSubProceso