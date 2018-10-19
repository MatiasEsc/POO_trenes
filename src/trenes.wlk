/** First Wollok example */
class VagonPasajeros {
	var property pesoTotal
	var property pasajeros
		
	method pasajeros(ancho,largo){

		if(ancho <= 2.5){
			pasajeros = largo * 8
			return pasajeros}
		else {
			pasajeros = largo * 10
			return pasajeros}
	}
	
	method pesoTotal(){
		pesoTotal = pasajeros * 80
		return pesoTotal
	}
	
	method liviano(){
		return pesoTotal < 2500
	}	
	
}

class VagonCarga {
	
	var property peso
	var property pesoMax
	const cantidadPasajeros = 0
	
	method pesoMax(){
		pesoMax = peso + (80*2)
		return pesoMax
	}
	
	method esLiviano(){
		return pesoMax < 2500
}
	method cantidadPasajeros(){
		return cantidadPasajeros
	}	

}

class Formacion{
	
	var vagones = []
	var locomotoras = []
	
	method agregarLocomotora(unaLocomotora){
		locomotoras.add(unaLocomotora)
	}
	
	method agregarVagon(vagon){
		vagones.add(vagon)
	}

}

class Locomotora {	
	
	var property kilo 
	var property pesoMax
	
	method arrastre(){
		return  pesoMax - kilo
		
	}
	
	method eficiente(){
		
		return self.arrastre() >= (kilo*5)
		
	}
	
}