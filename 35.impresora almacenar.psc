Algoritmo  ImpresoraConSubprocesos
    Definir capacidadPapel, paginas, opcion_,pagina, capacidad Como Entero;
    capacidadPapel <- 100
    
    Mostrar "=== Simulaci�n de impresora ==="
    Mostrar "La impresora tiene ", capacidadPapel, " p�ginas disponibles."
    
    Mientras capacidadPapel > 0 Hacer
        paginas <- PedirPaginas
        
        Si paginas <= capacidadPapel Entonces
            ImprimirPaginas(paginas, capacidadPapel)
            capacidadPapel <- capacidadPapel - paginas
            Mostrar "Quedan ", capacidadPapel, " p�ginas en la impresora."
        SiNo
            Mostrar "Error: no hay suficiente papel para imprimir ", paginas, " p�ginas."
        FinSi
        
        opcion_ <- Continuar
        Si opcion_ = 0 Entonces
            Mostrar "Proceso de impresi�n finalizado por el usuario."
            capacidadPapel <- 0
        FinSi
    FinMientras
    
    Mostrar "La impresora ya no tiene papel o el usuario finaliz�."
FinAlgoritmo


Funcion resultado <- PedirPaginas
    Definir resultado Como Entero;
    Escribir "Ingrese la cantidad de p�ginas a imprimir: "
    Leer resultado
FinFuncion

Funcion  ImprimirPaginas(paginas, capacidad)
    Mostrar "Imprimiendo ", paginas, " p�ginas..."
FinFuncion


Funcion  resultado <- Continuar
    Definir resultado Como Entero;
    Mostrar "�Desea imprimir m�s p�ginas? (1 = S�, 0 = No): "
    Leer resultado
FinFuncion
