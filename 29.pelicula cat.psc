Proceso AsistenteCine_SegunCategoria
    Definir edad, cat Como Entero
    Definir recomendacion Como Cadena
	
    edad <- PedirEdad()
    cat <- ObtenerCategoriaEdad(edad)   // 1=niño,2=niño/adol,3=adulto,4=mayor
    recomendacion <- RecomendarPorCategoria(cat)
    MostrarRecomendacion(edad, recomendacion)
FinProceso

Funcion valor <- PedirEdad
    Definir valor Como Entero
    Escribir "Ingrese su edad: "
    Leer valor
    Si valor <= 0 Entonces
        Escribir "Edad inválida. Se asignará 1 por defecto."
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
            resultado <- "Películas animadas y educativas aptas para todas las edades."
        2:
            resultado <- "Animaciones, aventuras y comedias familiares."
        3:
            resultado <- "Acción, drama, comedia y ciencia ficción."
        De Otro Modo:
            resultado <- "Películas clásicas y dramas de interés."
    FinSegun
FinFuncion

SubProceso MostrarRecomendacion(edad, recomendacion)
    Escribir "-----------------------------------"
    Escribir "Edad del usuario: ", edad
    Escribir "Recomendación de películas: ", recomendacion
    Escribir "-----------------------------------"
FinSubProceso