object luke {
    var lugaresVisitados = 0
    var ultimoRecuerdo = null
}

object alambique {
    
}

object paris {
    method recuerdoTipico() = "llavero de la torre eiffel"
}

object buenosAires {
    var recuerdoActual = "Mate con yerba"

    method recuerdoTipico() = recuerdoActual

    method cambiarRecuerdoActual(recuerdoNuevo) {
        recuerdoActual = recuerdoNuevo
    }
}

object bagdad {
    var recuerdoActual = "bidon con petroleo crudo"

    method recuerdoTipico() = recuerdoActual

    method cambiarRecuerdoActual(recuerdoNuevo) {
        recuerdoActual = recuerdoNuevo
    }
}

object lasVegas {
    var lugarConmemoradoActual = null

    method lugarConmemoradoActual() = lugarConmemoradoActual

    method recuerdoTipico() = lugarConmemoradoActual().recuerdoTipico
}