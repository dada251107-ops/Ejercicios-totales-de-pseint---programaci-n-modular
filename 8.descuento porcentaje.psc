Proceso DescuentoCompra
Definir precio, porcentaje, descuento, precioFinal Como Real;

Escribir "Ingrese el precio de la compra: ";
Leer precio;

porcentaje<- 0.19

descuento <- CalcularDescuento(precio, porcentaje);
precioFinal <- CalcularPrecioFinal(precio, descuento);

Escribir "El descuento aplicado es: $", descuento;
Escribir "El precio final de la compra es: $", precioFinal;
FinProceso

Funcion resultado <- CalcularDescuento(precio, porcentaje)
    Definir resultado Como Real;
    resultado <- precio * porcentaje
FinFuncion

Funcion resultado <- CalcularPrecioFinal(precio, descuento)
    Definir resultado Como Real;
    resultado <- precio - descuento;
FinFuncion