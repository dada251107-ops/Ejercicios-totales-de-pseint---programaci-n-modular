Proceso CajeroAutomatico
    Definir saldo, retiro Como Real
    Definir continuar Como Caracter
    
    saldo <- 1000   
    continuar <- "S"
    
    
Mientras saldo>0
Escribir "----------------------------------"
Escribir "Saldo disponible: $", saldo
retiro <- PedirMonto()


Si retiro <= saldo Entonces
	saldo <- CalcularSaldo(saldo, retiro)
	Escribir "Retiro exitoso. Su nuevo saldo es: $", saldo
SiNo
	Escribir "Error: El monto ingresado excede el saldo disponible."
FinSi

Escribir "¿Desea realizar otra operación? (S/N): "
Leer continuar
continuar <- Mayusculas(continuar)
FinMientras

Escribir "Gracias por usar el cajero automático."
FinProceso

Funcion monto <- PedirMonto
    Definir monto Como Real
    Escribir "Ingrese el monto que desea retirar: "
    Leer monto
FinFuncion

Funcion nuevoSaldo <- CalcularSaldo(saldoActual, retiro)
    Definir nuevoSaldo Como Real
    nuevoSaldo <- saldoActual - retiro
FinFuncion