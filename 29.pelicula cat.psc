Proceso AsistenteCine_SegunCategoria
    Definir edad, cat Como Entero
    Definir recomendacion Como Cadena
	
    edad <- PedirEdad()
    cat <- ObtenerCategoriaEdad(edad)   // 1=ni�o,2=ni�o/adol,3=adulto,4=mayor
    recomendacion <- RecomendarPorCategoria(cat)
    MostrarRecomendacion(edad, recomendacion)
FinProceso

Funcion valor <- PedirEdad
    Definir valor Como Entero
    Escribir "Ingrese su edad: "
    Leer valor
    Si valor <= 0 Entonces
        Escribir "Edad inv�lida. Se asignar� 1 por defecto."
        valor <- 1
    FinSi
FinFuncion

Funcion c <- ObtenerCategoriaEdad(edad)
    Definir c Como Entero
    Si edad < 7 Entonces
        c <- 1
    SiNo
        Si edad <= 17 Entonces
            c <- 2
        SiNo
            Si edad <= 30 Entonces
                c <- 3
            SiNo
                c <- 4
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion resultado <- RecomendarPorCategoria(cat)
    Definir resultado Como Cadena
    Segun cat Hacer
        1:
            resultado <- "Pel�culas animadas y educativas aptas para todas las edades."
        2:
            resultado <- "Animaciones, aventuras y comedias familiares."
        3:
            resultado <- "Acci�n, drama, comedia y ciencia ficci�n."
        De Otro Modo:
            resultado <- "Pel�culas cl�sicas y dramas de inter�s."
    FinSegun
FinFuncion

SubProceso MostrarRecomendacion(edad, recomendacion)
    Escribir "-----------------------------------"
    Escribir "Edad del usuario: ", edad
    Escribir "Recomendaci�n de pel�culas: ", recomendacion
    Escribir "-----------------------------------"
FinSubProceso