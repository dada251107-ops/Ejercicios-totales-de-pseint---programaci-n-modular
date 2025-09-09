Algoritmo  GestionTareas
    Definir descripcion, fecha, opcion_ Como Cadena
    Definir listaTareas Como Cadena
    Definir contador Como Entero
    
    listaTareas <- ""    
    contador <- 0
    
    Repetir
        descripcion <- IngresarDescripcion
        fecha <- IngresarFecha
        
        contador <- contador + 1
        listaTareas <- listaTareas + "Tarea " + ConvertirATexto(contador) + ": " + descripcion + " (Vence: " + fecha + ")" 
        
        opcion_ <- ContinuarIngreso
    Hasta Que opcion_= "N" O opcion_ = "n"
    
    MostrarTareas(listaTareas)
FinAlgoritmo


Funcion descripcion <- IngresarDescripcion
    Definir descripcion Como Cadena
    Escribir "Ingrese la descripción de la tarea: "
    Leer descripcion
FinFuncion
Funcion fecha <- IngresarFecha
    Definir fecha Como Cadena
    Escribir "Ingrese la fecha de vencimiento (dd/mm/aaaa): "
    Leer fecha
FinFuncion

Funcion opcion_ <- ContinuarIngreso
    Escribir "¿Desea agregar otra tarea? (S/N): "
    Leer opcion_
FinFuncion

SubProceso MostrarTareas(listaTareas)
    Escribir "==============================="
    Escribir "?? Lista de Tareas Pendientes:"
    Escribir "==============================="
    Escribir listaTareas
    Escribir "? Fin de la gestión de tareas."
FinSubProceso
