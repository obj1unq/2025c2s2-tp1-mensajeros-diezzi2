object paquete {
    var estaPago  = true

    method puedeEntregarse(destino, mensajero) = estaPago and destino.puedePasar(mensajero)

    // setter

    method estaPago(_estaPago) {
      estaPago = _estaPago
    }
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
    const peso        = 65
    const puedeLlamar = true

    // getters

    method peso() = peso

    method puedeLlamar() = puedeLlamar  
}

object neo {
    const peso       = 0
    var tieneCredito = true

    method puedeLlamar() = tieneCredito

    // getter

    method peso() = peso 

    // setter

    method tieneCredito(_tieneCredito) {
      tieneCredito = _tieneCredito
    }
}

object saraConnor {
    var peso          = 70
    var vehiculo      = moto
    const puedeLlamar = false

    method peso() = peso + vehiculo.peso()

    // getters

    method peso(_peso) {
      peso = _peso
    }

    method puedeLlamar() = puedeLlamar 

    // setter

    method vehiculo(_vehiculo) {
        vehiculo = _vehiculo
    } 
}

// VEHICULOS

object moto {
    const peso = 100

    // getter

    method peso() = peso  
}

object camion {
    const peso            = 500
    const pesoPorAcoplado = 500 
    var  cantAcoplados    = 1

    method peso() = peso + cantAcoplados * pesoPorAcoplado

    // setter

    method cantAcoplados(_cantAcoplados) {
      cantAcoplados = _cantAcoplados
    }
}