object luke {
    var lugaresVisitados = 0
    var ultimoRecuerdo = null
    var vehiculo = alambiqueVeloz

    method lugaresVisitados() = lugaresVisitados
    method ultimoRecuerdo() = ultimoRecuerdo

    method viajar(lugar) {
        if(lugar.puedeViajar(vehiculo)){
            lugaresVisitados += 1
            ultimoRecuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
    }

    method cambiarVehiculo(nuevo) {
        vehiculo = nuevo
    }
}

//---------- Vehiculos ----------
object alambiqueVeloz {
    var esRapido = true
    var combustible = 20
    var consumoPorViaje = 10

    method tieneCombustible() = combustible >= consumoPorViaje
    method esRapido() = esRapido
    method combustible() = combustible
    method consumoPorViaje() = consumoPorViaje

    method consumirCombustible() {
        combustible -= consumoPorViaje
    }
}

object carabanaGrande {
    var esRapido = false
    var combustible = 200
    var consumoPorViaje = 5

    method tieneCombustible() = combustible >= consumoPorViaje
    method esRapido() = esRapido
    method combustible() = combustible
    method consumoPorViaje() = consumoPorViaje

    method consumirCombustible() {
        combustible -= consumoPorViaje
    }
}

//Toma los valores del vehiculo en el que se convierte
object superConvertible {
    var esRapido = vehiculoConvertido.esRapido()
    var combustible = vehiculoConvertido.combustible()
    var consumoPorViaje = vehiculoConvertido.consumoPorViaje()
    var vehiculoConvertido = alambiqueVeloz

    method tieneCombustible() = combustible >= consumoPorViaje
    method esRapido() = esRapido
    method combustible() = combustible
    method consumoPorViaje() = consumoPorViaje

    method consumirCombustible() {
        combustible -= consumoPorViaje
    }

    method cambiarVehiculoConvertido(nuevo) {
        vehiculoConvertido = nuevo
    }
}

object antiguallaBlindada {
    var esRapido = gangster <= 3
    var combustible = 30
    var consumoPorViaje = 7 * gangster
    var gangster = 2

    method tieneCombustible() = combustible >= consumoPorViaje
    method esRapido() = esRapido
    method combustible() = combustible
    method consumoPorViaje() = consumoPorViaje

    method consumirCombustible() {
        combustible -= consumoPorViaje
    }

    method cambiarGangster(numero) {
        gangster += numero
    }
}

//---------- Lugares ----------
object paris {
    method recuerdoTipico() = "llavero de la torre eiffel"
    method puedeViajar(movil) = movil.tieneCombustible()
}

object buenosAires {
    var recuerdoActual = "Mate con yerba"

    method recuerdoTipico() = recuerdoActual

    method puedeViajar(movil) = movil.esRapido()

    method cambiarRecuerdoActual(recuerdoNuevo) {
        recuerdoActual = recuerdoNuevo
    }
}

object bagdad {
    var recuerdoActual = "bidon con petroleo crudo"

    method recuerdoTipico() = recuerdoActual
    method puedeViajar(movil) = true

    method cambiarRecuerdoActual(recuerdoNuevo) {
        recuerdoActual = recuerdoNuevo
    }
}

object lasVegas {
    var lugarConmemoradoActual = buenosAires

    method puedeViajar(movil) = lugarConmemoradoActual.puedeViajar(movil)
    method recuerdoTipico() = lugarConmemoradoActual.recuerdoTipico()

    method cambiarLugarConmemorado(nuevo) = {
        lugarConmemoradoActual = nuevo
    }
}