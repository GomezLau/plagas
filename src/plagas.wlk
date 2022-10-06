class Plaga{
	var poblacion
	method poblacion()=poblacion
	method condicionComun()= poblacion>=10
	method secuelasDeAtaque(){
		poblacion = poblacion*1.10
	}
}

class Cucarachas inherits Plaga{
	var pesoPromedio
	method pesoPromedio()= pesoPromedio
	method nivelDeDanio()= poblacion/2
	method transmiteEnfermedades()= pesoPromedio >= 10 and self.condicionComun()
	method atacar(){
		pesoPromedio+=2
		self.secuelasDeAtaque()
	}
}


class Mosquitos inherits Plaga{
	method nivelDeDanio()= poblacion
	method transmiteEnfermedades()= poblacion % 3 == 0 and self.condicionComun()
	method atacar(){
		self.secuelasDeAtaque()
	}
}

class Pulgas inherits Plaga{
	method nivelDeDanio()= poblacion*2
	method transmiteEnfermedades()= self.condicionComun()
	method atacar(){
		self.secuelasDeAtaque()
	}
}

class Garrapatas inherits Plaga{
	method nivelDeDanio()= poblacion*2
	method transmiteEnfermedades()= self.condicionComun()
	method atacar(){
		poblacion = poblacion*1.20
	}
	
}