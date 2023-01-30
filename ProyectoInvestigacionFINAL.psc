// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion

// Menu de ejercicios con numeros
// 1.- Pide dos numeros y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero 1"
	leer num1
	Escribir "Ingrese numero 2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
FinFuncion

// 2.- Pedir ingresar dos numeros y dividir los numeros por restas y presentar la cantidad de veces que el contador resta
Funcion  divisionde2numporresta()
	Definir  num1,num2,c, res Como real
	Escribir "Ingrese Numero 1" 
	Leer num1
	Escribir "Ingrese Numero 2" 
	Leer num2
	c=0
	res=num1
	Mientras res-num2>=0 Hacer
		res=res-num2
		c=c+1
		Escribir (res+num2), " - ", num2, " = ", res
	FinMientras
	Escribir "La Division Por Resta es: ", c
FinFuncion

//3.- Multiplicar dos numeros por sumas
Funcion multiplicacionde2numporsuma()
	Definir  num1,num2,r Como real
	Definir c, acu Como Entero
	Escribir "Ingrese Numero 1" 
	Leer num1
	Escribir "Ingrese Numero 2" 
	Leer num2
	r=num1*num2
	acu=0
	c=1
	Mientras c<=num1 Hacer
		acu=acu+num2
		c=c+1
		Escribir acu-num2, " + ", num2, " = ", acu
	FinMientras
	Escribir "La Multiplicacion Por Suma es: ", r
FinFuncion

// 4.- Suma Pares y Productos multiplos de 5 de una secuencia de numeros
Funcion SumapareyProductodeMult5()
	Definir  num, n, cp, sumpar, mult5, acumul5, c Como entero
	cp=0; acumul5=0; mult5=1; sumpar=0; c=1
	Escribir "Ingrese Cantidad De Numero : "
	Leer n
	Para c=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese Numeros: "
		leer num
		Si num mod 2==0  Entonces
			cp=cp+1
			sumpar=sumpar+num
		FinSi
		si num mod 5==0 Entonces
			acumul5=acumul5+1
			mult5=mult5*num
		Fin Si
	FinPara
	Escribir "Suma de pares:", sumpar
	Escribir "Multipos de 5: ", mult5
FinFuncion

//5.- Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0
Funcion CantidadDeDigitoHasta0()
	Definir num, c Como real
	Escribir "Ingrese Un Numero: "
	Leer num
	c=0
	Mientras num<>0 Hacer
		Mientras num<>0 Hacer
			num=trunc(num / 10)
			c=c+1
		FinMientras
		escribir "Ingrese un numero: "
		Leer num
		FinMientras
	Escribir "La Cantidad de Digitos Del Numero es: ", c
FinFuncion

// 6.- Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas
Funcion PreciodeNtrajes()
Definir ct, pt, dest, iva, pago, pagot, ac Como Real
Definir c Como Entero
Escribir "Ingrese Cantidad De Trajes: "
leer ct
c=1
Mientras c<=ct Hacer
    Escribir "Ingrese El Valor De Trajes: "
	Leer pt
	c=c+1
	si pt>=100 Entonces
		dest=pt*0.10
		iva=(pt-dest)*0.12
		pago=pt-dest+iva
		
		Escribir "PRECIO DEL TRAJE : ", pt
		Escribir "DESCUENTO DEL TRAJE  : ", dest
		Escribir "IVA DEL TRAJE : ", iva
		Escribir "PRAGO DEL TRAJE : ", pago
		Escribir ""
	SiNo
		dest=pt*0.05
		iva=(pt-dest)*0.12
		pago=pt-dest+iva
		Escribir "PRECIO DEL TRAJE : ", pt
		Escribir "DESCUENTO DEL TRAJE  : ", dest
		Escribir "IVA DEL TRAJE : ", iva
		Escribir "PRAGO DEL TRAJE : ", pago
		Escribir ""
	FinSi
	ac=ac+pago
FinMientras
pagot=pagot+ac
escribir "Total a Pagar: ", pagot
FinFuncion

// 7.- Dado tres numeros indicar si el segundo es el mayor
Funcion VerificarsiN2esMayor()
Definir n1, n2, n3 Como Entero
Escribir "Ingrese Los 3 Numeros: "
Leer n1,n2,n3
si n2>n1  Entonces
	si  n2>n3  Entonces
		Escribir n2, " Es mayor que ", n1, " y ", n3
		
	FinSi
SiNo
	Escribir n2, " No Es mayor que ", n1, " y ", n3
FinSi
FinFuncion

// 8.- Dado una secuencia de numeros presentar su promedio
// la secuencia termina cuando se ingrese un numero negativo
// 2,4,6,8,-10
Funcion PromedioDeUnaSerieN()
	Definir num, sum, pro Como real
	Definir c Como Entero
	c=0
	num=0
	sum=0
	Mientras num>=0 Hacer
		Escribir "Ingrese Un Numero: "
		leer num
		c=c+1
		si num>=0 Entonces
			
			sum=sum+num
			pro=sum/c
		FinSi
	FinMientras
	escribir "El Promedio de ", sum, " es: " pro
FinFuncion

// 9.- Numeros amigos
// dos numeros son amigos cuando la suma de los divisores del primer numero
// son iguales a la suma de los divisores del segundo numero.
// n1=6(1,2,3)=6 n2=25(1,5)=6
Funcion NumerosaAmigos()
Definir n1, n2, c, suma1, suma2 Como Entero
Escribir "Ingrese Numero 1 : "
Leer n1
Escribir "Ingrese Numero 2 : "
Leer n2
suma1=0
suma2=0
Para c=1 Hasta n1-1 Hacer
	si n1 mod c=0
		suma1=suma1+c
		
	FinSi
FinPara
Para c=1 Hasta n2-1 Hacer
	si n2 mod c=0
		suma2=suma2+c
	FinSi
FinPara
si suma1=suma2 Entonces
	escribir n1," y ", n2, " Son amigos"
SiNo
	escribir n1," y ", n2, " No son amigos"
FinSi
FinFuncion

//10.-  Primos Gemelos
// dos numeros son primos gemelos si ambos son primos n1=5  n2=7
Funcion PrimoGemelo()
Definir n1, n2, c, c2, np, np2 Como Entero
Escribir "Ingrese Un Numero: "
Leer n1
Escribir "Ingrese Un Numero: "
Leer n2
np=1; np2=1; c2=0; c=0
Mientras np<=n1 Hacer
	si n1 mod np=0 Entonces
		c=c+1
	FinSi
	np=np+1
FinMientras
Mientras np2<=n2 Hacer
	si n2 mod np2=0 Entonces
		c2=c2+1
	FinSi
	np2=np2+1
FinMientras
si c=2 Entonces
	si c2=2 Entonces
	FinSi
	Escribir n1, " y ", n2 " Son Primos Gemelos"
	
SiNo
	Escribir n1, " y ", n2 " No Son Primos Gemelos"
FinSi
FinFuncion

// Menu Ejercicios Cadenas

//1.- Presentar un nombre caracter por caracter
// nombre = "ana"  ana
Funcion FraseCaracter()
definir frase Como Caracter
Definir lon,pos Como Entero
pos=0
Escribir "Ingrese frase";leer frase
lon=Longitud(frase)-1
Para pos=0 Hasta lon Con Paso 1 Hacer
	Escribir Subcadena(frase,pos,pos);
FinPara
FinFuncion

//2.- Presentar el primero, el medio y el ultimo caracter de una frase
// frase="hola que tal"    hql
Funcion fraseMediaCentroUltimo()
definir frase Como Caracter
Definir lon,pos Como entero
pos=0
Escribir "Ingrese frase";leer frase
lon=Longitud(frase)-1
Escribir "El Primer Caracter de ", frase, " es: ",Subcadena( frase,0,0)
Escribir "El Caracter Medio de ", frase, " es: ",Subcadena( frase,lon/2,lon/2)
Escribir "El Ultimo Caracter de ", frase, " es: ",Subcadena( frase,lon,lon)
FinFuncion

//3.- Dado dos nombres indicar si son iguales
//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
Funcion  NombresIguales()
	definir nom, nom2 Como Caracter
	Escribir "Ingrese Nombre 1";leer nom
	Escribir "Ingrese Nombre 2";leer nom2
	si nom=nom2 Entonces
		escribir nom, " y ", nom2, " Son iaguales"
	SiNo
		escribir nom, " y ", nom2," No son iguales"
	FinSi
FinFuncion

//4.-Dadas dos frase indicar la de mayor longitud
//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
Funcion longitudfrase()
definir frase1, frase2 Como Caracter
Definir lon Como Entero
Escribir "Ingrese frase 1";leer frase1
Escribir "Ingrese frase 2";leer frase2
si Longitud(frase1)>Longitud(frase2) Entonces
	escribir " << ", frase1, " >> ", " Tiene mayor longitud que ", " << ", frase2, " >> "
SiNo
	escribir " << ", frase2, " >> "," Tiene mayor longitud que ", " << ", frase1, " >> "
FinSi
FinFuncion

//5.- Indicar cuantas ,.;: hay en una cadena
//frase="Hola, que tal; como te va,Bien: y tu, como estas."
// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
Funcion contarCantidadComaPuntosetc()
definir frase Como Caracter
Definir lon, pos, c1, c2, c3, c4 Como Entero
pos=0;c1=0; c2=0; c3=0; c4=0
Escribir "Ingrese frase";leer frase
lon=Longitud(frase)-1
Para pos=0 Hasta lon Con Paso 1 Hacer
	Si Subcadena(frase,pos,pos)=","
		c1=c1+1
	FinSi
	Si Subcadena(frase,pos,pos)="."
		c2=c2+1
	FinSi
	Si Subcadena(frase,pos,pos)=";"
		c3=c3+1
	FinSi
	Si Subcadena(frase,pos,pos)=":"
		c4=c4+1
	FinSi
FinPara
Escribir "La Cantidad de , es: ", c1
Escribir "La Cantidad de . es: ", c2
Escribir "La Cantidad de ; es: ", c3
Escribir "La Cantidad de : es: ", c4
FinFuncion

//6.- Dado una cadena indicar cuantas vocales, consonantes y digitos hay
//frase="Juan tiene 20 dolares"
// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
Funcion VocaleConsonantesyDigitos()
Definir frase Como Caracter
Definir l,pos,con0,con1,con2 Como Entero
Escribir "ingrese la frase"
leer frase
l=Longitud(frase);con0=0;con1=0;con2=0
para pos=0 Hasta l Con Paso 1 Hacer
	si Subcadena(frase,pos,pos)="a" o Subcadena(frase,pos,pos)="e" o Subcadena(frase,pos,pos)="i" o Subcadena(frase,pos,pos)="o" o Subcadena(frase,pos,pos)="u" O Subcadena(frase,pos,pos)="A" o Subcadena(frase,pos,pos)="E" o Subcadena(frase,pos,pos)="I" o Subcadena(frase,pos,pos)="O" o Subcadena(frase,pos,pos)="U" Entonces
		con0=con0+1	
	FinSi
FinPara
para pos=0 Hasta l Con Paso 1 Hacer
	si Subcadena(frase,pos,pos)="b" o Subcadena(frase,pos,pos)="c" o Subcadena(frase,pos,pos)="d" o Subcadena(frase,pos,pos)="f" o Subcadena(frase,pos,pos)="g" o Subcadena(frase,pos,pos)="h" o Subcadena(frase,pos,pos)="j" o Subcadena(frase,pos,pos)="k" o Subcadena(frase,pos,pos)="l" o Subcadena(frase,pos,pos)="m" o Subcadena(frase,pos,pos)="n" o Subcadena(frase,pos,pos)="p" o Subcadena(frase,pos,pos)="q" o Subcadena(frase,pos,pos)="r" o Subcadena(frase,pos,pos)="s" o Subcadena(frase,pos,pos)="t" o Subcadena(frase,pos,pos)="v" o Subcadena(frase,pos,pos)="w" o Subcadena(frase,pos,pos)="x" o Subcadena(frase,pos,pos)="y" o Subcadena(frase,pos,pos)="z" O Subcadena(frase,pos,pos)="B" o Subcadena(frase,pos,pos)="C" o Subcadena(frase,pos,pos)="D" o Subcadena(frase,pos,pos)="F" o Subcadena(frase,pos,pos)="G" o Subcadena(frase,pos,pos)="H" o Subcadena(frase,pos,pos)="J" o Subcadena(frase,pos,pos)="K" o Subcadena(frase,pos,pos)="L" o Subcadena(frase,pos,pos)="M" o Subcadena(frase,pos,pos)="N" o Subcadena(frase,pos,pos)="P" o Subcadena(frase,pos,pos)="Q" o Subcadena(frase,pos,pos)="R" o Subcadena(frase,pos,pos)="S" o Subcadena(frase,pos,pos)="T" o Subcadena(frase,pos,pos)="V" o Subcadena(frase,pos,pos)="W" o Subcadena(frase,pos,pos)="X" o Subcadena(frase,pos,pos)="Y" o Subcadena(frase,pos,pos)="Z" Entonces
		con1=con1+1	
	FinSi
FinPara
para pos=0 Hasta l Con Paso 1 Hacer
	si Subcadena(frase,pos,pos)>="0" y Subcadena(frase,pos,pos)<="9"
		con2=con2+1
	FinSi
FinPara
Escribir "hay ",con0," vocales"
Escribir "hay ",con1," consonantes"
Escribir "hay ",con2," digitos"
FinFuncion

//7.- Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras
// frase = "hola   que  tal" palabras=3
Funcion cantidadDePalabras()
definir frase,car,carante Como Caracter
definir pos,ce,l Como Entero
frase=""
ce=1
pos=0
l=0
Escribir " ingrese la frase "
leer frase
l=Longitud(frase)-1
para pos=0 Hasta l Con Paso 1 Hacer
	car= Subcadena(frase,pos,pos)
	carante= Subcadena(frase,pos-1,pos-1)
	Escribir car Sin Saltar
	si car<>" " y carante= " " Entonces
		ce=ce+1
	FinSi
FinPara
Escribir ""
Escribir " la frase " , " << ", frase , " >> "," tiene " , ce , " palabras "
FinFuncion

// 8.-Presentar la suma de los digitos de una cedula
// cedula="0914192182"   suma= 37   
Funcion SumaDigitos()
Definir n,d,c Como real
Escribir "ingrese la cedula"
leer n
c=0
Mientras n>0 Hacer
	d=n mod 10
	c=c+d
	n=trunc(n/10)
FinMientras
Escribir "la suma de los numeros de la cedula es: ",c 
FinFuncion

// 9.-Indicar si una palabra es palindroma
// palabra="ana" al reves="ana"
Funcion PalabraPolindroma()
Definir palabra,inversa Como Caracter
Definir a,b,i Como Entero
Escribir "ingrese la palabra"
leer palabra
inversa="";
b=Longitud(palabra)
para i=0 Hasta b Con Paso 1 Hacer
	inversa=inversa+Subcadena(palabra,i,i)
FinPara
si palabra=inversa Entonces
	Escribir "la palabra ", " << ", palabra, " >> ", " es palindroma"
SiNo
	Escribir "la palabra ", " << ",palabra, " >> "," no es palindroma"
FinSi
FinFuncion

// 10.-Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena
// cadena="hola que tal"
//         01234567891011
//caracter="r"  resp=-1
//caracter="q"  resp=5
Funcion PosicionDeUnaFrase()
Definir frase, letra, veri Como Caracter
Definir a,b,i  Como Entero
Definir lencontra Como Logico
Escribir "ingrese la palabra"
leer frase
Escribir "Ingrese la letra"
Leer letra
lencontra=Falso
i=0
Mientras (i<=Longitud(frase)) Hacer
	si (Subcadena(frase,i,i))=letra Entonces
		lencontra=Verdadero
		b=i
	FinSi
	i=i+1
FinMientras
Escribir "posicion: ",b
FinFuncion

// Menu Arreglo

// 1.-Dado un arreglo cualquiera ingresarlo y presentarlo
// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
Funcion PresentarArreglo()
Definir cuan,pos,n,posi Como Entero
Escribir "cuantos numeros vas a ingresar: "
leer cuan
Dimension n[cuan]
posi=1
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "Ingrese los numeros ",posi
	leer n[pos]
	posi=posi+1
FinPara
Escribir "Los numeros ingresados son: "
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir n[pos]
FinPara
FinFuncion

//2.- Presentar los numeros pares de un arreglo
// arreglo=[2,3,4,67,8] presenta 2 4 8  
Funcion NumerosParesDeUnArreglo()
Definir cuan,pos,n,posi,c Como Entero
Escribir "cuantos numeros vas a ingresar"
leer cuan
Dimension n[cuan]
posi=1
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "ingres el numero ",posi
	leer n[pos]
	posi=posi+1
FinPara
Escribir "Los Numeros Pares Son:"
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	c=n[pos] mod 2
	si c=0 Entonces
		Escribir n[pos]
	FinSi
FinPara
FinFuncion

//3.-Dado una serie de numeros guardar en un arreglo solo los numeros negativos
//n=5
// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
Funcion NumerosNegativos()
Definir pos,n,cuan,c,posi Como Entero
Escribir "ingrese cuantos numeros vas ingresa "
leer cuan
posi=1
Dimension n[cuan]
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "ingrese el numero ",posi	
	leer n[pos]
	posi=posi+1
FinPara
Escribir "Se desplazara los numeros que son negatios"
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	si n[pos] < 0 Entonces
		Escribir n[pos]
	FinSi
FinPara
FinFuncion

//4.-Dado un arreglo de nombres presentar el primer caracter de cada nombre
// n=3
// ["ana","jose","dan"]  presenta a j d 
Funcion PrimerCaracterDeCadaNombre()
Definir cuan,pos,posi,c Como Entero
Definir n Como Caracter
Escribir "cuantos nombres vas a ingresar"
leer cuan
Dimension n[cuan]
posi=1
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "ingres el nombre ",posi
	leer n[pos]
	posi=posi+1
FinPara
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "la primera letra del nombre de ",n[pos]," es: ",Subcadena(n[pos],0,0)
FinPara
FinFuncion

//5.-Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo
//n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15  
Funcion TotalCantidaPromedio()
Definir cuan,pos,posi,posi1,c,n,acu,pro Como real
Escribir "cuantos numeros vas a ingresar"
leer cuan
Dimension n[cuan]
posi=1;acu=0;posi1=0;pro=1
para pos=0 Hasta cuan-1 Con Paso 1 Hacer
	Escribir "ingres el numero ",posi, " : "
	leer n[pos]
	acu=acu+n[pos]
	posi=posi+1
	posi1=posi1+1
FinPara
pro=acu/cuan
Escribir "El Total es: ", acu
Escribir "La cantidad de los numeros es: ", posi1
Escribir "El promedio de los numeros es: ", pro
FinFuncion

//6.- Dado un arreglo presentarlo al revez solo los numeros multiplos de 5
//n=5  arreglo=[8,20,7,5,4] presenta 5 20
Funcion MultiplosDe5()
Definir num,div,r,lim,pos,i Como real
div = 5
Escribir "Ingrese la cantidad de numeros"
leer lim
Dimension num[lim]
pos=1
para i = 0 hasta lim-1 con paso 1 Hacer
	Escribir "Ingresa el numero ",pos
	leer num[i]
	pos=pos+1
FinPara
Escribir ""
Escribir "Los Numeros Multiplos De 5 Son: "
para i = lim-1 hasta 0 con paso -1 hacer
	Si num[i] mod div = 0 Entonces
		Escribir  num[i] 
	FinSi
FinPara
FinFuncion

//7.- Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo
//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
Funcion PrimeroMedioUltimoNUM()
definir num,lim,i, cant Como Entero
Escribir "Ingrese Cantidad De Numero:"
Leer cant
dimension num[cant]
Escribir "Ingrese los numeros"
para i = 0 hasta cant-1 con paso 1 Hacer
	leer num[i]
FinPara
Escribir ""
Escribir  " ", "Primero", "  ", "Medio", "  ", "Ultimo"
para i = 0 hasta cant-1 con paso 2 Hacer
	Mostrar " [ " num[i], " ] " Sin Saltar
FinPara          
FinFuncion

//8.- Dado un arreglo copiarlo en otro y presentarlo
//n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
Funcion CopiarYPresentarNum()
definir num,lim,i,ele,pos Como Entero
Escribir "Ingrese la cantidad de numeros"
leer lim
Dimension num[lim]
Dimension ele[lim]
pos=1
Escribir "arreglo 1"
para i = 0 hasta lim-1 con paso 1 Hacer
	
	leer num[i]
	ele[i]=num[i]
	pos=pos+1
FinPara
Escribir "Arreglo 2"
para i = 0 hasta lim-1 con paso 1 hacer
	Escribir ele[i] 
FinPara

Escribir " La copiado del arreglo"
para i = 0 hasta lim-1 con paso 1 hacer 
	Mostrar ele[i] 
FinPara
FinFuncion

//9.- Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos
//n=5  arreglo1=[8,20,7,5,4]
//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
Funcion SumaDe2Arreglos()
Definir arrgl, array,sum,i,lim,pos Como Entero
Escribir "Ingrese la cantidad de numeros"
leer lim
Dimension arrgl[lim]
Dimension array[lim]
Dimension sum[lim]
i=0;pos=1
Escribir "Arreglo 1"
para i = 0 hasta lim-1 con paso 1 Hacer
	leer arrgl[i]
FinPara
Escribir "Arreglo 2"
para i = 0 hasta lim-1 con paso 1 Hacer
	
	leer array[i]
FinPara
para i = 0 hasta lim-1 con paso 1 Hacer
	sum[i] = array[i] + arrgl[i]
FinPara
Escribir ""
Escribir "La Suma: "
para i = 0 hasta lim-1 con paso 1 Hacer
	Mostrar sum[i]
FinPara
FinFuncion

//10.- Dado una serie de numeros guarda en un arreglo los factoriales
//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
Funcion FactorialDeNnumeros()
Definir num,i,lim,x,fact,pos Como real
Escribir "Ingrese la cantidad de numeros"
leer lim
Dimension fact[lim]
pos=1
para i = 0 hasta lim-1 con paso 1 Hacer
	Escribir "Ingresa el numeros ",pos
	leer num
	x = num
	Mientras x > 1 Hacer
		x = x - 1
		num = num * x
	FinMientras
	fact[i] = num
	pos=pos+1
FinPara
Escribir ""
Escribir "Los Factoriales Son: "
para i = 0 hasta lim-1 con paso 1 Hacer
	Mostrar fact[i]
FinPara	
FinFuncion

// Algoritmo principal del proyecto

Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// Arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Mayor de 2 Numeros."
	menuNumeros[1] = "  2)Dividir dos numeros por restas."
	menuNumeros[2] = "  3)Multiplicar dos numeros por sumas."
	// n=5 : 20,5,10,2,1 respuesta: sumpares=32  multiplos5=1000
	menuNumeros[3] = "  4)Suma Pares y Productos multiplos de 5 de una secuencia de numeros."
	//  2,123,10,2345,0 respuesta = 10    r=trunc(2/10)=0 r = 2 mod 10 =2
	menuNumeros[4] = "  5)Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0."
	//El almacen SomosMas tiene una promoción: a todos los trajes que tienen un
	//precio superior a 100, se les aplicará un descuento del 10%  y a los demas
	//el 5%. presentar el valor de cada traje con su respectivo valor, descuento y pago
	//considerando el iva del 12%. Asuma que se ingresan n trajes.
	// n=2
	// PrecioTraje=120   des=precioTraje*0.10=12  iva=(120-12)*0.12 pago=precioTraje-des+iva
	// PrecioTraje=50   des=precioTraje*0.05=2.5  iva=(50-2.5)*0.12
	menuNumeros[5] = "  6)Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas."
	menuNumeros[6] = "  7)Dado tres numeros indicar si el segundo es el mayor."
	// la secuencia termina cuando se ingrese un numero negativo
	// 2,4,6,8,-10
	menuNumeros[7] = "  8)Dado una secuencia de numeros presentar su promedio."
	// dos numeros son amigos cuando la suma de los divisores del primer numero
	// son iguales a la suma de los divisores del segundo numero.
	// n1=6(1,2,3)=6 n2=25(1,5)=6
	menuNumeros[8] = "  9)Numeros amigos."
	// dos numeros son primos gemelos si ambos son primos n1=5  n2=7
	menuNumeros[9] = "  10)primos gemelos."
	menuNumeros[10]= "  11)Salir"
	
	// arreglos submenu cadenas
	// nombre = "ana"  ana
	menuCadenas[0] = "  1)Presentar un nombre caracter por caracter."
	// frase="hola que tal"    hql
	menuCadenas[1] = "  2)Presentar el primero, el medio y el ultimo caracter de una frase."
	//nom1="daniel" nombre2="daniel" si nombre1 = nombre2
	menuCadenas[2] = "  3)Dado dos nombres indicar si son iguales."
	//f1="Hola" f2="mal"  si longitud(f1)>longitud(f2)
	menuCadenas[3] = "  4)Dadas dos frase indicar la de mayor longitud."
	//frase="Hola, que tal; como te va,Bien: y tu, como estas."
	// ,=3  .=1  ;=1 :1   si subcadena(frase,pos,pos)=","
	menuCadenas[4] = "  5)Indicar cuantas ,.;: hay en una cadena."
	//frase="Juan tiene 20 dolares"
	// vocales=8   consonantes=11  digitos=2  si subcadena(frase,pos,pos)>="0" y <="9"
	menuCadenas[5] = "  6)Dado una cadena indicar cuantas vocales, consonantes y digitos hay."
	// frase = "hola   que  tal" palabras=3
	menuCadenas[6] = "  7)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras."
	// cedula="0914192182"= 37   convertirANumero(subcadena(frase,pos,pos))
	menuCadenas[7] = "  8)Presentar la suma de los digitos de una cedula."
	// palabra="ana"
	menuCadenas[8] = "  9)Indicar si una palabra es palindroma."
	// cadena="hola que tal"
	//         01234567891011
	//caracter="qui"  resp=-1
	//caracter="que"  resp=5
	menuCadenas[9] = "  10)Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena."
	menuCadenas[10] = "  11)Salir"
	
	// arreglo submenu arreglos
	// arreglo=[2,4,5,8,10]  presentar 2 4 5 8 10
	menuArreglos[0]= "  1)Dado un arreglo cualquiera ingresarlo y presentarlo."
	// arreglo=[2,3,4,67,8] presenta 2 4 8  
	menuArreglos[1]= "  2)Presentar los numeros pares de un arreglo."
    //n=5
	// 2,4,-6,2,-5 = [-6,-5]  = presenta -6 -5
	menuArreglos[2]= "  3)Dado una serie de numeros guardar en un arreglo solo los numeros negativos."
    // n=3
	// ["ana","jose","dan"]  presenta a j d 
	menuArreglos[3]= "  4)Dado un arreglo de nombres presentar el primer caracter de cada nombre."
    //n=5  arreglo=[10,20,30,5,10]= total=75  cant=5   prom=15   
	menuArreglos[4]= "  5)Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo."
    //n=5  arreglo=[8,20,7,5,4] presenta 5 20
	menuArreglos[5]= "  6)Dado un arreglo presentarlo al revez solo los numeros multiplos de 5."
	//n=5  arreglo=[8,20,7,5,4] presenta 8  7  4
	menuArreglos[6]= "  7)Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo."
    //n=5  arreglo1=[8,20,7,5,4]   arreglo2=[8,20,7,5,4] presenta 8,20,7,5,4
	menuArreglos[7]= "  8)Dado un arreglo copiarlo en otro y presentarlo."
    //n=5  arreglo1=[8,20,7,5,4]
	//     arreglo2=[2,1,3,5,6] copiarArreglo3=[pos]=arreglo1[pos]+arreglo2[pos]
	menuArreglos[8]= "  9)Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos."
	//n=5  3,2,1,5,4  arregloFactorual [6,2,1,120,24] 
	menuArreglos[9]= "  10)Dado una serie de numeros guarda en un arreglo los factoriales."
	menuArreglos[10]="  11)Salir"
	opc=""
    Mientras opc <> "4" Hacer
		opc=presentarMenu(" Menu Principal",menuPrincipal,4)
		Segun opc Hacer
		"1":
			opcn=""
			Mientras opcn <> "11" Hacer         
				opcn=presentarMenu("  << Ejercicios con Numeros >>",menuNumeros,11)
				Segun opcn Hacer
					"1":
						Escribir "  Mayor de dos Numeros"
						mayorDosNumeros()
						Esperar 3 Segundos
					"2":
						Escribir "  Dividir dos numeros por restas"
						divisionde2numporresta()
						Esperar 3 Segundos
					"3":
						Escribir "  Multiplicar dos numeros por sumas"
						multiplicacionde2numporsuma()
						Esperar 3 Segundos
					"4":
						Escribir "  Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
						SumapareyProductodeMult5()
						Esperar 3 Segundos
					"5":
						Escribir "  Presentar cantidad de digitos de todos los numeros de una secuencia de numeros hasta 0"
						CantidadDeDigitoHasta0()
						Esperar 3 Segundos
					"6":
						Escribir "  Mostrar El Precio, descuento, iva y pago de n trajes del amacen SomosMas"
						PreciodeNtrajes()
						Esperar 3 Segundos
					"7":
						Escribir "  Dado tres numeros indicar si el segundo es el mayor"
						VerificarsiN2esMayor()
						Esperar 3 Segundos
					"8":
						Escribir "  Dado una secuencia de numeros presentar su promedio"
						PromedioDeUnaSerieN()
						Esperar 3 Segundos
					"9":
						Escribir "  Numeros amigos"
						NumerosaAmigos()
						Esperar 3 Segundos
					"10":
						Escribir "  Primos gemelos"
						PrimoGemelo()
						Esperar 3 Segundos
						
					"11":
						Escribir "  Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "  Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		    
		"2":
			opcc=""
			Mientras opcc <> "11" Hacer
				opcc=presentarMenu("  << Ejercicios con Cadenas >> ",menuCadenas,11)
				Segun opcc Hacer
					"1":
						Escribir "  Presentar un nombre caracter por caracter"
						FraseCaracter()
						Esperar 3 Segundos
					"2":
						Escribir "  Presentar el primero, el medio y el ultimo caracter de una frase"
						fraseMediaCentroUltimo()
						Esperar 3 Segundos
					"3":
						Escribir "  Dado dos nombres indicar si son iguales"
						NombresIguales()
						Esperar 3 Segundos
					"4":
						Escribir "  Dadas dos frase indicar la de mayor longitud"
						longitudfrase()
						Esperar 3 Segundos
					"5":
						Escribir "  Indicar cuantas ,.;: hay en una cadena"
						contarCantidadComaPuntosetc()
						Esperar 3 Segundos
					"6":
						Escribir "  Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
						VocaleConsonantesyDigitos()
						Esperar 3 Segundos
					"7":
						Escribir "  Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
						cantidadDePalabras()
						Esperar 3 Segundos
					"8":
						Escribir "  Presentar la suma de los digitos de una cedula"
						SumaDigitos()
						Esperar 3 Segundos
					"9":
						Escribir "  Indicar si una palabra es palindroma"
						PalabraPolindroma()
						Esperar 3 Segundos
					"10":
						Escribir "  Presentar la posicion de un caracter o subcadena cualquiera dentro de una cadena"
						PosicionDeUnaFrase()
						Esperar 3 Segundos
					"11":
						Escribir "  Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "  Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
			
		"3":
			opca=""
			Mientras opca <> "11" Hacer
				opca=presentarMenu(" << Ejercicios con Arreglos >> ",menuArreglos,11)
				Segun opca Hacer
					"1":
						Escribir "  Dado un arreglo cualquiera ingresarlo y presentarlo"
						PresentarArreglo()
						Esperar 3 Segundos
					"2":
						Escribir "  Presentar los numeros pares de un arreglo"
						NumerosParesDeUnArreglo()
						Esperar 3 Segundos
					"3":
						Escribir "  Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
						NumerosNegativos()
						Esperar 3 Segundos
					"4":
						Escribir "  Dado un arreglo de nombres presentar el primer caracter de cada nombre"
						PrimerCaracterDeCadaNombre()
						Esperar 3 Segundos
					"5":
						Escribir "  Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
						TotalCantidaPromedio()
						Esperar 3 Segundos
					"6":
						Escribir "  Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
						MultiplosDe5()
						Esperar 3 Segundos
					"7":
						Escribir "  Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
						PrimeroMedioUltimoNUM()
						Esperar 3 Segundos
					"8":
						Escribir "  Dado un arreglo copiarlo en otro y presentarlo"
						CopiarYPresentarNum()
						Esperar 3 Segundos
					"9":
						Escribir "  Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
						SumaDe2Arreglos()
						Esperar 3 Segundos
					"10":
						Escribir "  Dado una serie de numeros guarda en un arreglo los factoriales"
						FactorialDeNnumeros()
						Esperar 3 Segundos
					"11":
						Escribir "  Regresando al Menu Principal"
						Esperar 3 Segundos
					De Otro Modo:
						Escribir "  Opcion invalida..."
						Esperar 3 Segundos
				Fin Segun
			FinMientras
		"4":
			Escribir " Gracias por usar el Sistema"
			Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo
