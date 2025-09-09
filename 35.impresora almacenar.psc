Algoritmo  ImpresoraConSubprocesos
    Definir capacidadPapel, paginas, opcion_,pagina, capacidad Como Entero;
    capacidadPapel <- 100
    
    Mostrar "=== Simulación de impresora ==="
    Mostrar "La impresora tiene ", capacidadPapel, " páginas disponibles."
    
    Mientras capacidadPapel > 0 Hacer
        paginas <- PedirPaginas
        
        Si paginas <= capacidadPapel Entonces
            ImprimirPaginas(paginas, capacidadPapel)
            capacidadPapel <- capacidadPapel - paginas
            Mostrar "Quedan ", capacidadPapel, " páginas en la impresora."
        SiNo
            Mostrar "Error: no hay suficiente papel para imprimir ", paginas, " páginas."
        FinSi
        
        opcion_ <- Continuar
        Si opcion_ = 0 Entonces
            Mostrar "Proceso de impresión finalizado por el usuario."
            capacidadPapel <- 0
        FinSi
    FinMientras
    
    Mostrar "La impresora ya no tiene papel o el usuario finalizó."
FinAlgoritmo


Funcion resultado <- PedirPaginas
    Definir resultado Como Entero;
    Escribir "Ingrese la cantidad de páginas a imprimir: "
    Leer resultado
FinFuncion

Funcion  ImprimirPaginas(paginas, capacidad)
    Mostrar "Imprimiendo ", paginas, " páginas..."
FinFuncion


Funcion  resultado <- Continuar
    Definir resultado Como Entero;
    Mostrar "¿Desea imprimir más páginas? (1 = Sí, 0 = No): "
    Leer resultado
FinFuncion
