class Torneo{
	const catadores = []
	const platosParticipantes = [] 
	
	method sumarParticipacion(participante) {
		const plato = participante.cocinar()
		catadores.forEach({catador => catador.catar(plato)})
		platosParticipantes.add(plato)
	}
	
	method ganador() = platosParticipantes.max({plato => plato.calificacionTotal()}).cocinero()
}