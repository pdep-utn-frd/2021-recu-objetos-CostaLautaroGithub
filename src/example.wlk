class equipo {
	
	var property localidad
	const equipo = []
	
	
	method localista(){return equipo.all{x => x.origen() == self.localidad()}	}
		
	method valoracion() {
		var tamanio
		var hab
		 tamanio= equipo.size()
		 hab = equipo.sum{x => x.habilidad()}
		 return hab / tamanio
		
		
		
	}
		
	
	
	
	
}






class Jugador {
	
	var property nombre
	var property origen
	var altura 
	var eficaciatriples
	var property posicion
	const talentos = []
	var essucio
	
	
	method habilidad() {
		return posicion.habil(eficaciatriples, talentos, altura,essucio)
		}
		
	method escrack()	{return self.habilidad() > 90} 
	
	method cambiarposicion(nueva){ self.posicion(nueva) }
	
	
}

	object tirador{
		
		method habil(eficaciatriples, talentos, altura,essucio){
			var tal
			tal = talentos.size()
			if (essucio) { return eficaciatriples * tal * (altura / 3) /2}
			else {return eficaciatriples * tal * (altura / 3) *1.1 }	}
		}
		
	object pasador {
		
		method habil(eficaciatriples, talentos, altura,essucio) {
			var cant
			cant = talentos.size{talentos.filter{x => x.lenght()}}
			return(altura * 0.75 + eficaciatriples * 0.25) * cant		}
			
			
		}
		
	object rebotero{
		
		method habil(eficaciatriples, talentos, altura,essucio) {
			
			if (essucio) { return eficaciatriples * altura  * 0.25 / 2}
			else {return eficaciatriples * altura  * 0.25 * 1.1 }	}
			
			
		}
		
		object corredor {
		
		method habil(eficaciatriples, talentos, altura,essucio) {
			
			 return altura * 20 //su tarea es correr y distraer, por lo que lo unico que importa es su traccion y su centro de masa.
			
		}		//En este programa el polimorfismo se usa en los objetos que refieren a la posicion, ya que tiene un unico metodo con igual nombre en todos, y en este se ingresan los mismos parametros iniciales, por lo que pueden ser llamados todos desde la misma invocacion de method.
		}
 class Entrenador {
 	
 	var property nombre
 	var property torneosganados
 	var property origen
 	var property antiguedad

 	
 	
 	method habilidad()
 		 		
}



 	class Humo inherits Entrenador {
 		var property inspiracion
 		
 		method inspirado(nuevo){ self.inspiracion(nuevo)}
 		
 		override method habilidad(){ return inspiracion.habilidad() * 0.75	}
 			
 			}
 		
 	class Sabe inherits Entrenador {
 		
 																									//	{}
 		override method habilidad(){return  torneosganados + antiguedad	}
 			method ganartrofeos(x){torneosganados += x}
 			}
 	
 	class Retirado inherits Entrenador {
 		
 		
 		override method habilidad(){return  antiguedad * 4	}
 			
 			}
 			
 	object partido {
 		
 		
 		
 		
 		
 		method ganador()	{
 			
 			
 			
 			
 			
 		}
 	}
 	
 	
 
 	
 	
 
	


