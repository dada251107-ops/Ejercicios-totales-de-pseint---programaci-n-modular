Proceso TiendaEnLinea
    Definir precio, costoProducto, total Como Real
    Definir cantidad, opcion Como Entero
    Definir continuar Como Caracter
    
    total <- 0
    continuar <- "S"
    
Mientras continuar = "S" Hacer
opcion_ <- MostrarMenu

precio <- ObtenerPrecio(opcion_)

Escribir "Ingrese la cantidad que desea comprar: "
Leer cantidad

Si cantidad > 0 Entonces
	costoProducto <- CalcularCosto(precio, cantidad)
	total <- total + costoProducto
	Escribir "Costo de este producto: $", costoProducto
	Escribir "Subtotal de la compra: $", total
SiNo
	Escribir "Error: La cantidad debe ser mayor a 0."
FinSi

Escribir "¿Desea agregar otro producto? (S/N): "
Leer continuar
continuar <- Mayusculas(continuar)
FinMientras

Escribir "-----------------------------------"
Escribir "Total final de la compra: $", total
Escribir "Gracias por su compra en la tienda en línea."
FinProceso

Funcion opcion <- MostrarMenu
    Definir opcion Como Entero
    Escribir "---- MENÚ DE PRODUCTOS ----"
    Escribir "1. Celular ($500)"
    Escribir "2. Audífonos ($50)"
    Escribir "3. Laptop ($1000)"
    Escribir "4. Mouse ($25)"
    Escribir "Seleccione el producto (1-4): "
    Leer opcion
FinFuncion

Funcion precio <- ObtenerPrecio(opcion_)
    Definir precio Como Real
    
    Segun opcion_ Hacer
        1:
            precio <- 500
        2:
            precio <- 50
        3:
            precio <- 1000
        4:
            precio <- 25
        De Otro Modo:
            Escribir "Opción inválida, precio = 0."
            precio <- 0
    FinSegun
FinFuncion


Funcion costo <- CalcularCosto(precio, cantidad)
    Definir costo Como Real
    costo <- precio * cantidad
FinFuncion