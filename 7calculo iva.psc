Proceso FacturaConFunciones
    Definir precioUnitario, total, iva Como Real;
    Definir cantidad Como Entero;
	
    // Pedimos datos al usuario
    Escribir "Ingrese el precio unitario del producto:";
    Leer precioUnitario;
	
    Escribir "Ingrese la cantidad de productos:";
    Leer cantidad;
	
    // Calculamos el total y el IVA con funciones
    total <- CalcularTotal(precioUnitario, cantidad);
    iva <- CalcularIVA(total);
	
    // Mostramos resultados
    Escribir "-------------------------------";
    Escribir "Precio unitario: $", precioUnitario;
    Escribir "Cantidad: ", cantidad;
    Escribir "Total sin IVA: $", total;
    Escribir "IVA (19%): $", iva;
    Escribir "Total con IVA: $", total + iva;
FinProceso


// Función para calcular el total sin IVA
Funcion resultado <- CalcularTotal(precio, cantidad)
    Definir resultado Como Real;
    resultado <- precio * cantidad;
FinFuncion

// Función para calcular el IVA (19%)
Funcion resultado <- CalcularIVA(total)
    Definir resultado Como Real;
    resultado <- total * 0.19;
FinFuncion
