Proceso CalcularEdades
    Definir anioNac, anioAct, edad Como Entero
    Definir i Como Entero
	
    Escribir "Ingrese el año actual: "
    Leer anioAct
	
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el año de nacimiento de la persona ", i, ": "
        Leer anioNac
        edad <- CalcularEdad(anioNac, anioAct)
		
        Escribir "La edad de la persona ", i, " es: ", edad, " años"
    FinPara
FinProceso

Funcion resultado <- CalcularEdad(anioNac, anioAct)
    Definir resultado Como Entero
    resultado <- anioAct - anioNac
	FinFuncion