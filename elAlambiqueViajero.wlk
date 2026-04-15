object luke {
    var vehiculo = alambiqueViajero
    var ciudadesVisitadas = 0
    var ultimaCiudadVisitada = paris

    method vehiculo() {
        return vehiculo
    }

    method cambiarVehiculo(nuevoVehiculo) {
        vehiculo = nuevoVehiculo
    }

    method viajarAunaCiudad(unaCiudad) {
        if (unaCiudad.puedePasar(vehiculo)) {
            ultimaCiudadVisitada = unaCiudad
            ciudadesVisitadas = ciudadesVisitadas + 1
            vehiculo.sufrirConsecuencia()
        }
    }

    method cantidadVisitadas() {
        return ciudadesVisitadas
    }

    method ultimaCiudadVisitada() {
        return ultimaCiudadVisitada
    }

    method recuerdoUltimaCiudad() {
        return ultimaCiudadVisitada.recuerdo()
    }
}


// Ciudades y otros objetos


object buenosAires {
  var presidenteActual = presidenteCipayo

method recuerdo() {
return presidenteActual.ofrecerRecuerdo()
}
  method cambiarPresidente(nuevoPresidente){
    presidenteActual = nuevoPresidente
  }

  method presidenteActual(){
    return presidenteActual
  }

  method puedePasar(unVehiculo) {
    return unVehiculo.esRapido()
    }
}

object paris {
  method recuerdo(){
    return llaveroTorre
  }

  method puedePasar(unVehiculo) {
    return unVehiculo.combustible() > 130
}
}

object bagdad {
   var recuerdoActual = armasDeDestruccionMasiva
  method recuerdo(){
    return recuerdoActual
  }
  method cambiarRecuerdo(nuevoRecuerdo){
    recuerdoActual = nuevoRecuerdo
  }

  method puedePasar(unVehiculo) {
    return true
  }
}

object lasVegas {
   var ciudadHomenajeada = paris
  method recuerdo(){
    return ciudadHomenajeada.recuerdo()
  }
  method cambiarCiudadHomenajeada(nuevaCiudad){
    ciudadHomenajeada = nuevaCiudad
  }

  method puedePasar(unVehiculo) {
    return ciudadHomenajeada.puedePasar(unVehiculo)
  }
}

object presidenteCipayo {
  method ofrecerRecuerdo(){
    return mateSinYerba
    
    }
}

object presidentePatriota {
    method ofrecerRecuerdo(){
        return mateConYerba
        
        }
}

object armasDeDestruccionMasiva {
 
}

object jardinesColgantes{

}

object barrilCrudo{

}

object llaveroTorre {

}

object mateConYerba {

}

object mateSinYerba {

}

// Vehículos

object alambiqueViajero {
  var combustible = 580

  method combustible() {
    return combustible
  }

  method esRapido() {
    return true
  }

  method sufrirConsecuencia() {
    combustible = combustible - 120
  }
}


object superChatarraEspecial {
  var municiones = 20

  method combustible() {
    return municiones * 15
  }

  method esRapido() {
    return false
  }

  method sufrirConsecuencia() {
    municiones = municiones - 3
  }
}

object antiguallaBlindada {
  var gangsters = 5

  method combustible() {
    return 200
  }

  method esRapido() {
    return gangsters > 4
  }

  method sufrirConsecuencia() {
    gangsters = gangsters - 1
  }
}

object superConvertible {
  var modo = avion
  var combustible = 600

  method cambiarModo(nuevoModo) {
    modo = nuevoModo
  }

  method combustible() {
    return combustible
  }

  method esRapido() {
    return modo.esRapido()
  }

  method sufrirConsecuencia() {
    // Si querés que además de gastar nafta vuelva a modo auto:
    combustible = combustible - 100
    modo = auto 
  }
}

object auto {
    method esRapido() {

        return false
      
    }

}
object tren {
    method esRapido(){

        return false

    }

}
object avion {
    method esRapido() {

        return true
      
    }

}

// Ciudad inventada

object hurlingham {
  method recuerdo() {
    return cdDivididos
  }

  method puedePasar(unVehiculo) {
    return not unVehiculo.esRapido() || unVehiculo.combustible() > 200
  }
}

object cdDivididos {

}