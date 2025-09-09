Proceso RegistroParqueadero
    Definir numVehiculos, i Como Entero
    Definir placa, hora Como Cadena
    Definir listaVehiculos Como Cadena
    
    listaVehiculos <- ""
    
    Escribir "Ingrese el n�mero de veh�culos a registrar: "
    Leer numVehiculos
    
    Para i <- 1 Hasta numVehiculos Con Paso 1 Hacer
        placa <- IngresarPlaca(i)
        hora <- IngresarHora(i)
        listaVehiculos <- listaVehiculos + "  Veh�culo " + ConvertirATexto(i) + ":Placa [" + placa + "] - Hora de ingreso: " + hora 
    FinPara
    
    MostrarResumen(listaVehiculos, numVehiculos)
FinProceso

Funcion placa <- IngresarPlaca(num)
    Escribir "Ingrese la placa del veh�culo ", num, ": "
    Leer placa
FinFuncion

Funcion hora <- IngresarHora(num)
    Escribir "Ingrese la hora de ingreso del veh�culo ", num, " (hh:mm): "
    Leer hora
FinFuncion

Funcion  MostrarResumen(listaVehiculos, numVehiculos)
    Escribir "========================================"
    Escribir "?? Resumen de veh�culos registrados:"
    Escribir "========================================"
    Escribir listaVehiculos
    Escribir "----------------------------------------"
    Escribir "Total de veh�culos registrados: ", numVehiculos
    Escribir "? Registro finalizado."
FinFuncion
