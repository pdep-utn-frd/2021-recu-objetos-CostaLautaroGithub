class equipo {
	
	var property localidad
	const equipo = []
	
	
	method localista(){return equipo.all{x => x.origen() == self.localidad()}	}
		
		
		
	
	
	
	
}






class jugador {
	
	var nombre
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
		
 class Entrenador {
 	
 	var property nombre
 	var property torneosganados
 	var property origen
 	var property antiguedad
 	var property sabe //boolean
 	
 	
 	method habilidad()
 		 		
}



 	class Humo inherits Entrenador {
 		var property inspiracion
 		
 		method inspirado(nuevo){ self.inspiracion(nuevo)}
 		override method habilidad(){ return inspiracion.habilidad() * 0.75	}
 			
 			}
 		
 	class Sabe inherits Entrenador {
 		
 		
 		override method habilidad(){return  self.torneosganados() + self.antiguedad()	}
 			
 			}
 	
 	
 	
 	
 
 	
 	
 }
	


