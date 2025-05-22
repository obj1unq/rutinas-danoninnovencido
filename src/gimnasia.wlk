class Rutina {
    var property tiempoDeRutina = 0
   
    
    method tiempoDeBajaDeCalorias() {return 100* (self.tiempoDeRutina() - self.descansoDeRutina()) * self.intesidadDeLaRutina()  }

    method descansoDeRutina()
    
    method tiempoDeRutina(){return tiempoDeRutina}

    method intesidadDeLaRutina()
}

class Running inherits Rutina{
    
    const property intesidadDeLaRutina 

    override method descansoDeRutina(){
        if (tiempoDeRutina > 20) { 
            return 5 
        }else{ 
            return 2 
        }
    }   
}

class Maraton inherits Running{

    override method tiempoDeBajaDeCalorias(){ return (super()) * 2}
}

class Remo inherits Rutina {

    override method descansoDeRutina() {return tiempoDeRutina / 5 }
    
    override method intesidadDeLaRutina(){return 1.3}
}

class RemoDeCompeticion inherits Remo{

    override method descansoDeRutina(){ return  2.max(super() - 3) }

    override method intesidadDeLaRutina(){ return 1.7}

}

class Persona {}
