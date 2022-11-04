class Plato {
	const baseCalorias = 100
	const cocinero // necesario para el torneo
	
	method cocinero() = cocinero	
	
	method cantidadAzucar()
	
	// Punto de entrada punto 1
	method cantidadCalorias() = 3 * self.cantidadAzucar() + baseCalorias
}

class Entrada inherits Plato {
	method esBonito() = true
	override method cantidadAzucar() = 0
}

class Principal inherits Plato {
	const esBonito
	const cantidadAzucar
	
	method esBonito() = esBonito
	override method cantidadAzucar() = cantidadAzucar
}

class Postre inherits Plato {
	const cantColores
	
	method esBonito() = cantColores > 3 
	override method cantidadAzucar() = 120
}