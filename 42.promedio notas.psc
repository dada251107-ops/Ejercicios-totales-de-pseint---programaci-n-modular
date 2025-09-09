Algoritmo  PromedioExamenes
    Definir nota, suma, promedio Como Real
    Definir contador Como Entero
    Definir opcion_ Como Caracter
    
    suma <- 0
    contador <- 0
    
    Repetir
        nota <- IngresarNota
        suma <- suma + nota
        contador <- contador + 1
        
        opcion_ <- ContinuarIngreso
    Hasta Que opcion_= "N" o Opcion_= "n"
    
    promedio <- CalcularPromedio(suma, contador)
    MostrarResultado(promedio)
FinAlgoritmo



Funcion nota <- IngresarNota
    Definir nota Como Real
    Escribir "Ingrese la nota del examen: "
    Leer nota
FinFuncion

Funcion opcion_ <- ContinuarIngreso
    Definir opcion_ Como Caracter
    Escribir "¿Desea ingresar otra nota? (S/N): "
    Leer opcion_
FinFuncion

Funcion promedio <- CalcularPromedio(suma, contador)
    Definir promedio Como Real
    promedio <- suma / contador
FinFuncion

Funcion  MostrarResultado(promedio)
    Escribir "----------------------------------"
    Escribir "El promedio de las notas es: ", promedio
    Si promedio >= 3.0 Entonces
        Escribir "? El estudiante ha APROBADO."
    SiNo
        Escribir "? El estudiante ha REPROBADO."
    FinSi
FinFuncion