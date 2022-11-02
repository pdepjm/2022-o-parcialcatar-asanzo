import plato.*

class Cocinero {
	var especialidad
//	const platosCocinados = []
	
	method calificacionDePlato(plato) = especialidad.catar(plato)
	
	method catar(plato){
		plato.serCalificado(self.calificacionDePlato(plato))
	}
	
	method cambiarEspecialidad(nuevaEspecialidad){
		especialidad = nuevaEspecialidad
	}
	
//	method calificacionTotalDePlatos() = platosCocinados.sum({plato => plato.calificacionTotal()})
	
//	method cantidadCalificacionesTotal() = platosCocinados.sum({plato => plato.cantidadCalificaciones()})
	
//	method experiencia() = self.calificacionTotalDePlatos() * self.cantidadCalificacionesTotal()
	
	method cocinar()
//	{ //efecto y retorno
//		const plato = self.platoCocinado()
//		platosCocinados.add(plato)
//		return plato
//	}
	
//	method platoCocinado()
	
//	method noTieneExperiencia() = self.experiencia() == 0
	
//	method participar(torneo){
////		if (self.noTieneExperiencia()) throw new Exception(message = 'Un cocinero sin experiencia no puede participar')
//		
//		torneo.sumarParticipante(self)
//	}
	
}

class Pastelero{
	const dulzorDeseado
	
	method catar(plato) = (5 * plato.cantidadAzucar() / dulzorDeseado).max(10)
	
	method cocinar() = new PlatoPostre(cocinero= self, colores=['hay que revisar el enunciado'])
	
}

class Chef{
	const cantidadCaloriasDeseadas
	
	method platoCumpleExpectativa(plato) = plato.esBonito() and plato.cantidadCalorias() <= cantidadCaloriasDeseadas
	
	method catar(plato) = if (self.platoCumpleExpectativa(plato)) 10 else self.calificacionSiNoCumpleExpectativa(plato)
	
	method calificacionSiNoCumpleExpectativa(plato) = 0
	
	method cocinar() = new PlatoPrincipal(cocinero= self, esBonito = true, cantidadAzucar=0.randomUpTo(100))
}

class Souschef inherits Chef{	
	override method calificacionSiNoCumpleExpectativa(plato) = (plato.cantidadCalorias() / 100).max(6)
	
	override method cocinar() = new PlatoEntrada(cocinero= self)
}
