class Torneo{
	const catadores = []
	const platosParticipantes = [] 
	
	method sumarParticipacion(participante) {
//		const plato = participante.cocinar()
//		catadores.forEach({catador => catador.catar(plato)})
//		platosParticipantes.add(plato)
		platosParticipantes.add(participante.cocinar())
	}
	
	method ganador() {
		if (platosParticipantes.isEmpty()) 
			throw new TorneoSinParticipantesException()
		return platosParticipantes.max({plato => self.calificacionTotal(plato)}).cocinero()
	}
	
	method calificacionTotal(plato) = catadores.sum({catador => catador.catar(plato)})
	
}


class TorneoSinParticipantesException inherits Exception(message = "Torneo sin participantes") {}