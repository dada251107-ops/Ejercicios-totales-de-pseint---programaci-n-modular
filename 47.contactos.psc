Proceso AgendaContactos
    Definir numContactos, i Como Entero
    Definir nombre, telefono Como Cadena
    Definir listaContactos Como Cadena
    
    listaContactos <- ""
    
    Escribir "¿Cuántos contactos desea registrar en la agenda?"
    Leer numContactos
    
    Para i <- 1 Hasta numContactos Con Paso 1 Hacer
        nombre <- IngresarNombre(i)
        telefono <- IngresarTelefono(i)
        
        // Acumulador de contactos
        listaContactos <- listaContactos + ConvertirATexto(i) + ". " + nombre + " - Tel: " + telefono
    
		MostrarAgenda(listaContactos, numContactos)
	FinPara
	
FinProceso

Funcion nombre <- IngresarNombre(num)
    Escribir "Ingrese el nombre del contacto ", num, ": "
    Leer nombre
FinFuncion

Funcion telefono <- IngresarTelefono(num)

    Escribir "Ingrese el número de teléfono del contacto ", num, ": "
    Leer telefono
FinFuncion

Funcion MostrarAgenda(listaContactos, numContactos)
    Escribir "====================================="
    Escribir "?? Agenda de Contactos"
    Escribir "====================================="
    Escribir listaContactos
    Escribir "-------------------------------------"
    Escribir "Total de contactos registrados: ", numContactos
    Escribir "? Fin del registro de la agenda."
FinFuncion
