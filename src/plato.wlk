class Plato{
	const baseCalorias = 100
	const calificaciones = []
	const cocinero
	
	method cocinero() = cocinero
	
	method serCalificado(calificacion) = calificaciones.add(calificacion)
	
	method cantidadAzucar()
	
	method cantidadCalorias() = 3 * self.cantidadAzucar() + baseCalorias
	
	method calificacionTotal() = calificaciones.sum()
	
	method cantidadCalificaciones() = calificaciones.size()
}

class PlatoEntrada inherits Plato{
	method esBonito() = true
	override method cantidadAzucar() = 0
}

class PlatoPrincipal inherits Plato{
	const esBonito
	const cantidadAzucar
	
	method esBonito() = esBonito
	override method cantidadAzucar() = cantidadAzucar
}

class PlatoPostre inherits Plato{
	const colores
	
	method esBonito() = colores.size() > 3 
	override method cantidadAzucar() = 120
}