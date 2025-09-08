Proceso Restaurante
    Definir opcion, metodoPago Como Entero
    Definir total, subtotal Como Real
    Definir continuar Como Caracter
    
    subtotal <- 0
    continuar <- "S"
    
    
    Mientras continuar = "S" Hacer
        opcion_ <- MostrarMenu
        subtotal <- subtotal + CalcularPrecio(opcion_)
        
        Escribir "�Desea pedir otro producto? (S/N): "
        Leer continuar
        continuar <- Mayusculas(continuar)
    FinMientras
    

    metodoPago <- PedirMetodoPago
    

    total <- AplicarDescuento(subtotal, metodoPago)
    MostrarFactura(subtotal, total, metodoPago)
FinProceso
Funcion op <- MostrarMenu
    Definir op Como Entero
    Escribir "---- MEN� DEL RESTAURANTE ----"
    Escribir "1. Hamburguesa ($10)"
    Escribir "2. Pizza ($12)"
    Escribir "3. Ensalada ($8)"
    Escribir "4. Gaseosa ($3)"
    Escribir "5. Caf� ($2)"
    Escribir "Seleccione una opci�n: "
    Leer op
FinFuncion

Funcion precio <- CalcularPrecio(opcion_)
    Definir precio Como Real
    
    Segun opcion_ Hacer
        1:
            precio <- 10
        2:
            precio <- 12
        3:
            precio <- 8
        4:
            precio <- 3
        5:
            precio <- 2
        De Otro Modo:
            Escribir "Opci�n inv�lida. Se asigna precio 0."
            precio <- 0
    FinSegun
FinFuncion

Funcion metodo <- PedirMetodoPago
    Definir metodo Como Entero
    Escribir "Seleccione m�todo de pago:"
    Escribir "1. Efectivo (10% descuento)"
    Escribir "2. Tarjeta de cr�dito (5% descuento)"
    Escribir "3. Cheque (sin descuento)"
    Leer metodo
FinFuncion


Funcion total <- AplicarDescuento(subtotal, metodoPago)
    Definir total Como Real
    
    Segun metodoPago Hacer
        1:
            total <- subtotal - (subtotal * 0.10)
        2:
            total <- subtotal - (subtotal * 0.05)
        3:
            total <- subtotal
        De Otro Modo:
            Escribir "M�todo de pago inv�lido. No se aplica descuento."
            total <- subtotal
    FinSegun
FinFuncion

Funcion MostrarFactura(subtotal, total, metodoPago)
    Escribir "--------- FACTURA ---------"
    Escribir "Subtotal: $", subtotal
    Segun metodoPago Hacer
        1:
            Escribir "M�todo de pago: Efectivo"
        2:
            Escribir "M�todo de pago: Tarjeta de cr�dito"
        3:
            Escribir "M�todo de pago: Cheque"
        De Otro Modo:
            Escribir "M�todo de pago: Desconocido"
    FinSegun
    Escribir "Total a pagar: $", total
    Escribir "----------------------------"
FinFuncion
