Proceso RegistroParqueadero
    Definir numVehiculos, i Como Entero
    Definir placa, hora Como Cadena
    Definir listaVehiculos Como Cadena
    
    listaVehiculos <- ""
    
    Escribir "Ingrese el número de vehículos a registrar: "
    Leer numVehiculos
    
    Para i <- 1 Hasta numVehiculos Con Paso 1 Hacer
        placa <- IngresarPlaca(i)
        hora <- IngresarHora(i)
        listaVehiculos <- listaVehiculos + "  Vehículo " + ConvertirATexto(i) + ":Placa [" + placa + "] - Hora de ingreso: " + hora 
    FinPara
    
    MostrarResumen(listaVehiculos, numVehiculos)
FinProceso

Funcion placa <- IngresarPlaca(num)
    Escribir "Ingrese la placa del vehículo ", num, ": "
    Leer placa
FinFuncion

Funcion hora <- IngresarHora(num)
    Escribir "Ingrese la hora de ingreso del vehículo ", num, " (hh:mm): "
    Leer hora
FinFuncion

Funcion  MostrarResumen(listaVehiculos, numVehiculos)
    Escribir "========================================"
    Escribir "?? Resumen de vehículos registrados:"
    Escribir "========================================"
    Escribir listaVehiculos
    Escribir "----------------------------------------"
    Escribir "Total de vehículos registrados: ", numVehiculos
    Escribir "? Registro finalizado."
FinFuncion
