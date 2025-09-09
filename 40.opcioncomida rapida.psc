Algoritmo MenuComidasRapidas
    Definir opcion_ Como Entero
    Definir total Como Real
    total <- 0
    
    Repetir
        MostrarMenu
        opcion_ <- PedirOpcion
        total <- total + CalcularPrecio(opcion_)
    Hasta Que opcion_ = 0
    
    Escribir "--------------------------------------"
    Escribir "El costo total de su pedido es: $", total
    Escribir "¡Gracias por su compra, vuelva pronto!"
FinAlgoritmo

Funcion  MostrarMenu
    Escribir "===== MENÚ COMIDAS RÁPIDAS ====="
    Escribir "1. Hamburguesa - $12.000"
    Escribir "2. Perro caliente - $8.000"
    Escribir "3. Papas fritas - $5.000"
    Escribir "4. Gaseosa - $4.000"
    Escribir "0. Finalizar pedido"
    Escribir "--------------------------------------"
FinFuncion

Funcion opcion_ <- PedirOpcion 
    Definir opcion_ Como Entero
    Escribir "Ingrese la opción de su pedido: "
    Leer opcion_
FinFuncion

Funcion precio <- CalcularPrecio(opcion_)
    Definir precio Como Real
    Segun opcion_ Hacer
        1:
            precio <- 12000
        2:
            precio <- 8000
        3:
            precio <- 5000
        4:
            precio <- 4000
        0:
            precio <- 0
        De Otro Modo:
            Escribir "Opción inválida. Intente de nuevo."
            precio <- 0
    FinSegun
FinFuncion