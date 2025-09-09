Algoritmo  RegistroVentas
    Definir producto Como Cadena
    Definir precio Como Real
    Definir opcion Como Cadena
    Definir total Como Real
    Definir listaVentas Como Cadena
    Definir contador Como Entero
    
    total <- 0
    listaVentas <- ""
    contador <- 0
    
    Repetir
        producto <- IngresarProducto
        precio <- IngresarPrecio
        
        contador <- contador + 1
        total <- total + precio
        
        listaVentas <- listaVentas + ConvertirATexto(contador) + ". " + producto + " - $" + ConvertirATexto(precio)
        
        opcion <- ContinuarIngreso
    Hasta Que opcion_ = "N" O opcion_= "n"
    
    MostrarResumen(listaVentas, total)
FinAlgoritmo


Funcion producto <- IngresarProducto
    Definir producto Como Cadena
    Escribir "Ingrese el nombre del producto vendido: "
    Leer producto
FinFuncion
Funcion precio <- IngresarPrecio
    
    Escribir "Ingrese el precio del producto: "
    Leer precio
FinFuncion

Funcion opcion_ <- ContinuarIngreso
    Definir opcion_ Como Cadena
    Escribir "¿Desea registrar otra venta? (S/N): "
    Leer opcion_
FinFuncion

Funcion MostrarResumen(listaVentas, total)
    Escribir "====================================="
    Escribir "?? Resumen de Ventas Registradas:"
    Escribir "====================================="
    Escribir listaVentas
    Escribir "-------------------------------------"
    Escribir "?? Monto total de ventas: $", total
    Escribir "? Fin del registro de ventas."
FinFuncion
