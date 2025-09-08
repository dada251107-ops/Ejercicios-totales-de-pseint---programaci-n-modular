Algoritmo  CalcularIMCdosPersonas
    Definir peso1, altura1, peso2, altura2 Como Real;
    Definir imc1, imc2 Como Real;
	
    
    Escribir "Ingrese el peso de la primera persona (kg): ";
    Leer peso1;
    Escribir "Ingrese la altura de la primera persona (m): ";
    Leer altura1;
	
    Escribir "Ingrese el peso de la segunda persona (kg): ";
    Leer peso2;
    Escribir "Ingrese la altura de la segunda persona (m): ";
    Leer altura2;
	
    
    imc1 <- CalcularIMC(peso1, altura1);
    imc2 <- CalcularIMC(peso2, altura2);
	
    MostrarIMC(1, imc1);
    MostrarIMC(2, imc2);
FinAlgoritmo

Funcion resultado <- CalcularIMC(p, a)
    Definir resultado Como Real;
    resultado <- p / (a * a);
FinFuncion


Funcion   MostrarIMC(numPersona, imc)
    Escribir "El IMC de la persona ", numPersona, " es: ", imc;
FinFuncion


