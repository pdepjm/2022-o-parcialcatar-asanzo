import plato.*

class Cocinero {
	var especialidad
	
	// Punto de entrada punto 2.
	method calificacionPara(plato) = especialidad.catar(plato)
	
	// Punto de entrada punto 3.
	method cambiarEspecialidad(nuevaEspecialidad){
		especialidad = nuevaEspecialidad
	}
	
	// Punto de entrada punto 5.
	method cocinar() = especialidad.cocinar(self)
}

class EspecialidadPastelero {
	var dulzorDeseado
	
	method catar(plato) = (5 * plato.cantidadAzucar() / dulzorDeseado).min(10)
	
	method cocinar(elCocinero) = new Postre(cocinero = elCocinero, cantColores = dulzorDeseado / 50)
}

class EspecialidadChef {
	var cantidadCaloriasDeseadas
	
	method platoCumpleExpectativa(plato) = plato.esBonito() and plato.cantidadCalorias() <= cantidadCaloriasDeseadas
	
	method catar(plato) = if (self.platoCumpleExpectativa(plato)) 10 else self.calificacionSiNoCumpleExpectativa(plato)
	
	method calificacionSiNoCumpleExpectativa(plato) = 0
	
	method cocinar(elCocinero) = new Principal(cocinero = elCocinero, esBonito = true, cantidadAzucar = cantidadCaloriasDeseadas)
}

class EspecialidadSouschef inherits EspecialidadChef {	
	override method calificacionSiNoCumpleExpectativa(plato) = (plato.cantidadCalorias() / 100).min(6)
	
	override method cocinar(elCocinero) = new Entrada(cocinero = elCocinero)
}
