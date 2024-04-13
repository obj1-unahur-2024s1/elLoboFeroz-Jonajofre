
object elLoboFeroz {
	var peso = 10
	
	method estaSaludable() {
		return peso.between(20, 150)
	}
	
	method comerAlgo(algo){
		peso = peso + algo.peso() * 0.1 
	}
	
	method correr(){
		peso = 0.max(peso - 1)
	}
	
	method sufrirUnaCrisis(){
		peso = 10
	}
	
	method peso(){
		return peso
	}
	
	method soplarUnaCasa(casa, cantDeChanchitos){
		peso = 0.max( peso - casa.resistencia()- (cantDeChanchitos * chanchito.peso()) ) 
	}
}

object caperucitaRoja {
	 var peso = 60 
	 var cantManzanasEnCanasta = 6 
	 
	 method peso(){
		return peso
		}
	method cantidadDeManzanas(){
		return cantManzanasEnCanasta
	}
	 method caerManzanas(cantidad) {
	 	if (cantManzanasEnCanasta >= cantidad){
	 		cantManzanasEnCanasta = cantManzanasEnCanasta - cantidad
	 	}
	 	peso = peso - (cantidad * 0.2)
	 }
	 
	method agegarManzanas(cantidad){
		cantManzanasEnCanasta = cantManzanasEnCanasta + cantidad
	    peso += cantidad * 0.2
	}
	
}

object abuelita {
	var peso = 50
	method peso(){
		return peso
	}
}
object cazador {
	var peso = 80
	method rescatarDeLobo(){
		 elLoboFeroz.sufrirUnaCrisis()
	   }
	method peso(){
		return peso
	}
}
object casaPaja {
	var resistencia = 0
	method resistencia(){
		return resistencia
	}
}
object casaMadera {
	var resistencia = 5
	method resistencia(){
		return resistencia
	}
}

object casaLadrillo {
	var resistencia = 2 * cantidadDeLadrillos
	var cantidadDeLadrillos = 0
	
	method resistencia(){
		return resistencia 
	}
	method cantDeLadrillos(cant){
		cantidadDeLadrillos = cantidadDeLadrillos +cant
	}
}

object chanchito{
	var peso = 15
	method peso(){
		return peso
	}

}


