// Una empresa de venta de productos por correo desea realizar una estadística de las ventas 
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5 
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.

// ¡OJO!
// EJECUTAR CON LA PANTALLA EMERGENTE MAXIMIZADA

Algoritmo E22_Extras_7
	Definir ventas,n,i,j Como Entero
	n=5
	Dimension ventas[n,n]
	RellenarMatriz(ventas,n,n)
	Definir TotalPorDia,TotalPorProducto como entero
	Definir dias,productos Como Caracter
	Dimension TotalPorDia[n],TotalPorProducto[n]
	Dimension dias[n],productos[n]
	dias[0]="lun"
	dias[1]="mar"
	dias[2]="mie"
	dias[3]="jue"
	dias[4]="vie"
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		TotalPorDia[j]=0
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			TotalPorDia[j]=TotalPorDia[j]+ventas[i,j]
		Fin Para
	Fin Para
	productos[0]="prod. 1"
	productos[1]="prod. 2"
	productos[2]="prod. 3"
	productos[3]="prod. 4"
	productos[4]="prod. 5"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		TotalPorProducto[i]=0
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			TotalPorProducto[i]=TotalPorProducto[i]+ventas[i,j]
		Fin Para
	Fin Para
	Definir lunes,martes,miercoles,jueves,viernes Como Entero
	Definir masLunes,masMartes,masMiercoles,masJueves,masViernes como entero
	Definir productoMasVendido Como Caracter
	Dimension lunes[n],martes[n],miercoles[n],jueves[n],viernes[n]
	Dimension productoMasVendido[n]
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			lunes[i]=ventas[i,0]
			martes[i]=ventas[i,1]
			miercoles[i]=ventas[i,2]
			jueves[i]=ventas[i,3]
			viernes[i]=ventas[i,4]
		Fin Para
	Fin Para
	masLunes=0
	masMartes=0
	masMiercoles=0
	masJueves=0
	masViernes=0
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		productoMasVendido[i]=""
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si lunes[i]>masLunes Entonces
			masLunes=lunes[i]
			productoMasVendido[0]=productos[i]
		Fin Si
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si martes[i]>masMartes Entonces
			masMartes=martes[i]
			productoMasVendido[1]=productos[i]
		Fin Si
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si miercoles[i]>masMiercoles Entonces
			masMiercoles=miercoles[i]
			productoMasVendido[2]=productos[i]
		Fin Si
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si jueves[i]>masJueves Entonces
			masJueves=jueves[i]
			productoMasVendido[3]=productos[i]
		Fin Si
	Fin Para
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si viernes[i]>masViernes Entonces
			masViernes=viernes[i]
			productoMasVendido[4]=productos[i]
		Fin Si
	Fin Para
	////   IMPRESIÓN FINAL    
	Escribir "-----------------------------------------------------------------------------"
	Escribir "                              Ventas semanales"
	Escribir "                                (en unidades)"
	Escribir "-----------------------------------------------------------------------------"
	Escribir Sin Saltar "Producto  \  Día     "
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir Sin Saltar dias[j],"      "
	Fin Para
	Escribir "Total x prod."
	Para i<-0 Hasta n-1 Con Paso 1 Hacer  
		escribir sin saltar productos[i],"          "
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir "|   ",ventas[i,j],"   " Sin Saltar
		Fin Para
		Escribir Sin Saltar "     ",TotalPorProducto[i]
		Escribir ""
	Fin Para
	Escribir "Total x día      " Sin Saltar
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "|  ",TotalPorDia[j],"   " Sin Saltar
	Fin Para
	Escribir ""
	Escribir "Prod. + vendido   " Sin Saltar
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir productoMasVendido[j],"  " Sin Saltar
	Fin Para
	Escribir ""
	Escribir ""
	Escribir "-----------------------------------------------------------------------------"
	Si masLunes>masMartes Y masLunes>masMiercoles Y masLunes>masJueves Y masLunes>masViernes Entonces
		Escribir "El más vendido es ",productoMasVendido[0],", el día es lunes y la cifra vendida es ",masLunes
	SiNo
		Si masMartes>masLunes Y masMartes>masMiercoles Y masMartes>masJueves Y masMartes>masViernes Entonces
			Escribir "El más vendido es ",productoMasVendido[1],", el día es martes y la cifra vendida es ",masMartes
		SiNo
			Si masMiercoles>masLunes Y masMiercoles>masMartes Y masMiercoles>masJueves Y masMiercoles>masViernes Entonces
				Escribir "El más vendido es ",productoMasVendido[2],", el día es miércoles y la cifra vendida es ",masMiercoles
			SiNo
				Si masJueves>masLunes Y masJueves>masMartes Y masJueves>masMiercoles Y masJueves>masViernes Entonces
					Escribir "El más vendido es ",productoMasVendido[3],", el día es jueves y la cifra vendida es ",masJueves
				SiNo
					Si masViernes>masLunes Y masViernes>masMartes Y masViernes>masMiercoles Y masViernes>masJueves Entonces
						Escribir "El más vendido es ",productoMasVendido[4],", el día es viernes y la cifra vendida es ",masViernes
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	Escribir "-----------------------------------------------------------------------------"
FinAlgoritmo
///para los subprocesos voy a usar genéricos matrizX, r y t así me sirven p/otros ej.
SubProceso RellenarMatriz(matrizX,r,t)
	Definir i,j Como Entero
	Para i<-0 Hasta r-1 Con Paso 1 Hacer
		Para j<-0 Hasta t-1 Con Paso 1 Hacer
			matrizX[i,j]=aleatorio(10,99)
		Fin Para
	Fin Para	
FinSubProceso
