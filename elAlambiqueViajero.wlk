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

object alambiqueVeloz {
    var esRapido = true
    var combustible = 20
    var consumoPorViaje = 10

    method tieneCombustible() = combustible >= consumoPorViaje
    method esRapido() = esRapido

    method consumirCombustible() {
        combustible -= consumoPorViaje
    }
}

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