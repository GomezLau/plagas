import plagas.*

object barrio{
	const elementos = []
	method elementos()=elementos
	method esCopado()= elementos.count({e=>e.esBueno()}) > elementos.count({e=> not e.esBueno()})
}

class Hogar {
	var nivelDeMugre
	var confort
	method nivelDeMugre()=nivelDeMugre
	method esBueno()= nivelDeMugre <= confort/2
	method sufrirAtaqueDe(plaga){
		plaga.atacar()
		nivelDeMugre += plaga.nivelDeDanio()
	}
}

class Huerta {
	var nivelDeProduccion
	var capacidadDeProduccion //kilos por mes
	method nivelDeProduccion()=nivelDeProduccion
	method esBueno()= capacidadDeProduccion > nivelDeProduccion
	method sufrirAtaqueDe(plaga){
		plaga.atacar()
		nivelDeProduccion -= plaga.nivelDeDanio()*0.1
		if(plaga.transmiteEnfermedades()){
			nivelDeProduccion -= 10
			
		}
	}
}


class Mascota {
	var nivelDeSalud
	method nivelDeSalud()= nivelDeSalud
	method esBueno()= nivelDeSalud > 250
	method sufrirAtaqueDe(plaga){
		if(plaga.transmiteEnfermedades()){
			plaga.atacar()
			nivelDeSalud -= plaga.nivelDeDanio()
			
		}
	}
}