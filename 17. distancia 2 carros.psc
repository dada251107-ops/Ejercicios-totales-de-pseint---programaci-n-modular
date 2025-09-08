Algoritmo  PromedioVelocidadCarros
    Definir distancia1, tiempo1, distancia2, tiempo2 Como Real;
    Definir velocidad1, velocidad2 Como Real;
	
    Escribir "Ingrese la distancia recorrida por el carro 1 (km): ";
    Leer distancia1;
    Escribir "Ingrese el tiempo empleado por el carro 1 (horas): ";
    Leer tiempo1;
	
    Escribir "Ingrese la distancia recorrida por el carro 2 (km): ";
    Leer distancia2;
    Escribir "Ingrese el tiempo empleado por el carro 2 (horas): ";
    Leer tiempo2;
	
    velocidad1 <- CalcularVelocidad(distancia1, tiempo1);
    velocidad2 <- CalcularVelocidad(distancia2, tiempo2);
	
    MostrarVelocidad(1, velocidad1);
    MostrarVelocidad(2, velocidad2);
FinAlgoritmo


Funcion resultado <- CalcularVelocidad(d, t)
    Definir resultado Como Real;
    resultado <- d / t;
FinFuncion
Funcion MostrarVelocidad(numCarro, v)
    Escribir "La velocidad promedio del carro ", numCarro, " es: ", v, " km/h";
FinFuncion
