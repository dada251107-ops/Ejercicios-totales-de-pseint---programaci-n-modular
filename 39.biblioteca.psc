Algoritmo  RegistroBiblioteca
    Definir listaLibros Como Cadena
    Definir continuar Como Caracter
    Definir contador Como Entero
    
    listaLibros <- ""
    contador <- 0
    Repetir
        contador <- contador + 1
        RegistrarLibro(listaLibros, contador)
        
        Escribir "�Desea registrar otro libro? (S/N): "
        Leer continuar
    Hasta Que continuar = "N" O continuar = "n"
    
    MostrarLibros(listaLibros)
FinAlgoritmo


Funcion  RegistrarLibro(listaLibros, contador)
    Definir titulo, autor Como Cadena
    Definir paginas Como Entero
    Definir registro Como Cadena
    
    Escribir "Ingrese el t�tulo del libro: "
    Leer titulo
    
    Escribir "Ingrese el autor del libro: "
    Leer autor
    
    Escribir "Ingrese el n�mero de p�ginas: "
    Leer paginas
    
    registro <- "Libro " + ConvertirATexto(contador) + ": " + titulo + " | Autor: " + autor + " | P�ginas: " + ConvertirATexto(paginas) + "\n"
    
    listalibros <- listaLibros+registro
FinFuncion
Funcion  MostrarLibros(listaLibros)
    Escribir "============================"
    Escribir "   LIBROS REGISTRADOS"
    Escribir "============================"
    Escribir listalibros
FinFuncion
