Proceso TiendaProductos
    Definir tipoProducto Como Caracter
    Definir cantidad Como Entero
    Definir precioBase, totalSinDescuento, totalConDescuento Como Real
    tipoProducto <- PedirTipoProducto
    cantidad <- PedirCantidad
    precioBase <- ObtenerPrecioBase(tipoProducto)
    totalSinDescuento <- precioBase * cantidad
    totalConDescuento <- AplicarDescuento(tipoProducto, totalSinDescuento)
    MostrarFactura(tipoProducto, cantidad, precioBase, totalSinDescuento, totalConDescuento)
FinProceso
Funcion tipo <- PedirTipoProducto
    Definir tipo Como Caracter
    Escribir "Ingrese el tipo de producto (A = Alimentos, V = Vestimenta, E = Electrónicos): "
    Leer tipo
    tipo <- Mayusculas(tipo)
FinFuncion
Funcion cantidad <- PedirCantidad
    Definir cantidad Como Entero
    Escribir "Ingrese la cantidad de unidades: "
    Leer cantidad
    Si cantidad <= 0 Entonces
        Escribir "Cantidad inválida. Se asignará 1 por defecto."
        cantidad <- 1
    FinSi
FinFuncion


// Función para obtener el precio base según el producto
Funcion precio <- ObtenerPrecioBase(tipo)
    Definir precio Como Real
	Leer precio
    Segun tipo Hacer
        "A":
            precio <- 10.0   // Precio base alimentos
        "V":
            precio <- 20.0   // Precio base vestimenta
        "E":
            precio <- 50.0   // Precio base electrónicos
        De Otro Modo:
            Escribir "Tipo de producto inválido. Se asignará precio 0."
            precio <- 0
    FinSegun
FinFuncion


// Función para aplicar descuento según el tipo de producto
Funcion total <- AplicarDescuento(tipo, subtotal)
    Definir total Como Real
    Segun tipo Hacer
        "A":
            total <- subtotal - (subtotal * 0.10)   // 10% de descuento
        "V":
            total <- subtotal - (subtotal * 0.05)   // 5% de descuento
        "E":
            total <- subtotal                       // Sin descuento
        De Otro Modo:
            total <- subtotal
    FinSegun
FinFuncion

SubProceso MostrarFactura(tipo, cantidad, precioUnit, subtotal, total)
    Escribir "-------------------------------"
    Escribir "Tipo de producto: ", tipo
    Escribir "Cantidad: ", cantidad
    Escribir "Precio unitario: $", precioUnit
    Escribir "Subtotal sin descuento: $", subtotal
    Escribir "Total con descuento: $", total
    Escribir "-------------------------------"
FinSubProceso
