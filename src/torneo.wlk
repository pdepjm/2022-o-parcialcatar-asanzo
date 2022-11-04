class Torneo{
	const catadores = []
	const platosParticipantes = [] 
	
	// Punto de entrada punto 6a
	method sumarParticipacion(cocinero) {
		platosParticipantes.add(cocinero.cocinar())
	}
	
	// Punto de entrada punto 6b
	method ganador() {
		if (platosParticipantes.isEmpty()) 
			throw new DomainException(message = "No se puede definir el ganador de un torneo sin participantes")
		return platosParticipantes.max({plato => self.calificacionTotal(plato)}).cocinero()
	}
	
	method calificacionTotal(plato) = catadores.sum({catador => catador.catar(plato)})
	
}