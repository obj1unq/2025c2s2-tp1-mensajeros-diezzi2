object paquete {
    var property estaPago  = null
    var property mensajero = null
    var property destino   = null

    method puedeEnviarse() = destino.puedePasar(mensajero)

    method puedeEntregarse() = estaPago && self.puedeEnviarse()
}

// DESTINOS

object brooklyn {
    method puedePasar(mensajero) = mensajero.peso() <= 1000 
}

object matrix {
    method puedePasar(mensajero) = mensajero.puedeLlamar() 
}

// MENSAJEROS

object jeanGray {
    const property peso        = 65
    const property puedeLlamar = true 
}

object neo {
    const property peso  = 0
    var property credito = true

    method puedeLlamar() = credito
}

object saraConnor {
    var property peso          = 70
    var property vehiculo      = moto
    const property puedeLlamar = false

    method peso() = peso + vehiculo.peso() 
}

// VEHICULOS

object moto {
    const property peso = 100 
}

object camion {
    const property peso    = 500
    var property acoplados = 1

    method peso() = peso + acoplados * 500
}