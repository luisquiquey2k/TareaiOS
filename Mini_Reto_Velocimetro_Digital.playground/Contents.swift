//: Velocimetro de automovil digital

import UIKit

//Declaracion de una enumeracion
enum Velocidades: Int {
	case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
	
	//Declaracion de un inicializador
	init (velocidadInicial : Velocidades) {
		self = velocidadInicial
	}
	
	//Creacion de una funcion
	func descripcionVelocidad() -> String {
		var descripcion: String = ""
		
		switch self{
		case .Apagado:
			descripcion = "Apagado"
		case .VelocidadBaja:
			descripcion = "Velocidad Baja"
		case .VelocidadMedia:
			descripcion = "Velocidad Media"
		case .VelocidadAlta:
			descripcion = "Velocidad Alta"
		}
		
		return descripcion
	}
}

//Declaracion de una clase
class Auto {
	
	//Declaracion de atributos
	var velocidad : Velocidades
	
	//Declaracion de un inicializador
	init () {
		self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
	}
	
	//Creacion de una funcion
	func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
		
		let velocidadActual : Velocidades = self.velocidad
		
		switch self.velocidad {
		case Velocidades.Apagado:
			self.velocidad = Velocidades.VelocidadBaja
		case Velocidades.VelocidadBaja:
			self.velocidad = Velocidades.VelocidadMedia
		case Velocidades.VelocidadMedia:
			self.velocidad = Velocidades.VelocidadAlta
		case Velocidades.VelocidadAlta:
			self.velocidad = Velocidades.VelocidadMedia
		}
		
		return (velocidadActual.rawValue, velocidadActual.descripcionVelocidad())
	}
}

//Instanciacion
var auto : Auto = Auto()

//Ciclo for
for var i in 0..<20 {
	var velocidadActual = auto.cambioDeVelocidad()
	print("\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}
