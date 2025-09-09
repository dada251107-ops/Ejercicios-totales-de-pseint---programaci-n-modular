Algoritmo  TiendaVirtual
    Definir numProductos, i Como Entero
    Definir producto Como Cadena
    Definir precio, total Como Real
    Definir listaCompras Como Cadena
    
    listaCompras <- ""
    total <- 0
    
    Escribir "Ingrese la cantidad de productos que desea comprar: "
    Leer numProductos
    
    Para i <- 1 Hasta numProductos Con Paso 1 Hacer
        producto <- IngresarProducto(i)
        precio <- IngresarPrecio(i)
        
        total <- total + precio
        listaCompras <- listaCompras + ConvertirATexto(i) + ". " + producto + " - $" + ConvertirATexto(precio) 
    FinPara
    
    MostrarResumen(listaCompras, total)
FinAlgoritmo

Funcion producto <- IngresarProducto(num)
    Definir producto Como Cadena
    Escribir "Ingrese el nombre del producto ", num, ": "
    Leer producto
FinFuncion
Funcion precio <- IngresarPrecio(num)
    Definir precio Como Real
    Escribir "Ingrese el precio del producto ", num, ": "
    Leer precio
FinFuncion
SubProceso MostrarResumen(listaCompras, total)
    Escribir "==================================="
    Escribir "?? Carrito de Compras:"
    Escribir "==================================="
    Escribir listaCompras
    Escribir "-----------------------------------"
    Escribir "?? Total de la compra: $", total
    Escribir "? Gracias por su compra."
FinFuncion