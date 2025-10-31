import barrio.*
class Plagas {
    var población
    const property daño

    method población() = población
    method transmiteEnfermedades() = población >= 10
    method atacarA(unElemento){
        unElemento.recibirAtaqueDe(self)
        población += población * 0.10
    }
    
}

class Cucarachas inherits Plagas {
    var pesoPromedio

    method pesoPromedio() = pesoPromedio
    method nivelDaño() = población / 2
    override method transmiteEnfermedades() = super() && pesoPromedio >= 10
    override method atacarA(unElemento){
        super(unElemento)
        pesoPromedio += 2
    }
}

class Pulgas inherits Plagas{
    method nivelDaño() = población * 2
}

class Garrapatas inherits Pulgas {
    override method atacarA(unElemento){
        población += población * 0.20
    }
}

class Mosquitos inherits Plagas{
    method nivelDaño() = población
    override method transmiteEnfermedades() = super() && población % 3 == 0
}