Proceso TiendaVirtualConSubprocesos
    Definir nombreProducto Como Cadena
    Definir precioProducto, totalCompra Como Real
    Definir continuar Como Caracter
    Definir listaProductos Como Cadena
    
    totalCompra <- 0
    listaProductos <- ""
    continuar <- "S"
    Mientras continuar = "S" Hacer
        nombreProducto <- PedirNombreProducto
        precioProducto <- PedirPrecioProducto
        totalCompra <- totalCompra + precioProducto
        listaProductos <- listaProductos + nombreProducto + " ($" + ConvertirATexto(precioProducto) + ")\n"
        
        continuar <- DeseaContinuar(N)
    FinMientras
    MostrarResumen(listaProductos, totalCompra)
FinProceso

Funcion nombre <- PedirNombreProducto
    Definir nombre Como Cadena
    Escribir "Ingrese el nombre del producto: "
    Leer nombre
FinFuncion

Funcion precio <- PedirPrecioProducto
    Definir precio Como Real
    Escribir "Ingrese el precio del producto: "
    Leer precio
    Si precio < 0 Entonces
        Escribir "Precio inválido, se asignará 0."
        precio <- 0
    FinSi
FinFuncion

Funcion respuesta <- DeseaContinuar(S)
    Definir respuesta Como Caracter
    Escribir "¿Desea agregar otro producto? (S/N): "
    Leer respuesta
    respuesta <- Mayusculas(respuesta)
FinFuncion
Funcion MostrarResumen(productos, total)
    Escribir "------------------------------"
    Escribir "Productos agregados: "
    Escribir productos
    Escribir "Total de la compra: $", total
    Escribir "------------------------------"
FinFuncion
