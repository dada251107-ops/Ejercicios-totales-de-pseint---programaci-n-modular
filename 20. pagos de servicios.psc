Algoritmo TotalServicios
    Definir n, i Como Entero;
    Definir consumo, totalPagar Como Real;
	
    Escribir "¿Cuántos servicios desea registrar?: ";
    Leer n;
	
    totalPagar <- 0;
	
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir "Ingrese el valor del servicio ", i, ": ";
        Leer consumo;
        totalPagar <- SumarConsumo(totalPagar, consumo);
    FinPara
	
    Escribir "==============================";
    Escribir "El total a pagar por los servicios es: $", totalPagar;
    Escribir "==============================";
FinAlgoritmo



// Función para acumular los consumos
Funcion resultado <- SumarConsumo(acumulado, nuevoConsumo)
    Definir resultado Como Real;
    resultado <- acumulado + nuevoConsumo;
	FinFuncion