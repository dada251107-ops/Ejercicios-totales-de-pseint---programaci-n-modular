Funcion cantidad <- pide_cantidad
	Escribir "digite cuantos numeros va a sumar con un rango de 0 a 15"
	leer cantidad
FinFuncion
Funcion numero <- pide_numero(contador)
	escribir "Digite un numero"
	leer numero
FinFuncion
Funcion suma <- hace_sumas(numero, suma)
	suma<-suma + numero
FinFuncion
Funcion numero_valido <- si_numero_es_correcto
	escribir "ok el numero es valido"
FinFuncion
Funcion fuera_rango <- si_esta_fuera_rango
	Escribir "El numero esta fuera del rango"
FinFuncion
Funcion suma <- imprime_suma(suma)
	Escribir "resultado de la suma"
	escribir suma
FinFuncion
Algoritmo Sumar_varios_numeros
	definir cantidad, numero, suma, total Como Entero
	cantidad <- pide_cantidad
	para contador<- 1 hasta cantidad con paso 1 hacer
		numero <- pide_numero (contador)
		suma <- hace_sumas(numero, suma)
		si numero < 0 Entonces
			numero_valido <- si_numero_es_correcto
		SiNo
			si numero > 15 Entonces
				fuera_rango <- si_esta_fuera_rango
			FinSi
		FinSi
	FinPara
	suma <- imprime_suma(suma)
FinAlgoritmo
