Proceso AsistenteNutricionista
    Definir peso, altura, imc Como Real
    Definir categoria Como Cadena
    peso <- PedirPeso
    altura <- PedirAltura
    imc <- CalcularIMC(peso, altura)
    categoria <- ClasificarIMC(imc)
    MostrarResultados(peso, altura, imc, categoria)
FinProceso
Funcion valor <- PedirPeso
    Definir valor Como Real
    Escribir "Ingrese su peso en kilogramos (kg): "
    Leer valor
    Si valor <= 0 Entonces
        Escribir "Peso inválido. Se asignará 1 kg por defecto."
        valor <- 1
    FinSi
FinFuncion
Funcion valor <- PedirAltura
    Definir valor Como Real
    Escribir "Ingrese su altura en metros (m): "
    Leer valor
    Si valor <= 0 Entonces
        Escribir "Altura inválida. Se asignará 1 m por defecto."
        valor <- 1
    FinSi
FinFuncion
Funcion resultado <- CalcularIMC(peso, altura)
    Definir resultado Como Real
    resultado <- peso / (altura * altura)
FinFuncion
Funcion categoria <- ClasificarIMC(imc)
    Definir categoria Como Cadena
    
    Segun categoria Hacer
        imc < 18.5:
            categoria <- "Bajo peso"
        imc < 24.9:
            categoria <- "Peso normal"
        imc < 29.9:
            categoria <- "Sobrepeso"
        De Otro Modo:
            categoria <- "Obesidad"
    FinSegun
FinFuncion
SubProceso MostrarResultados(peso, altura, imc, categoria)
    Escribir "-----------------------------------"
    Escribir "Peso: ", peso, " kg"
    Escribir "Altura: ", altura, " m"
    Escribir "IMC calculado: ", imc
    Escribir "Categoría: ", categoria
    Escribir "-----------------------------------"
FinSubProceso