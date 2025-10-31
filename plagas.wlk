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
    method nivelDaño() //Method abstracto que convierte la clase en abstrata. Ya no puedo instanciar esta clase directamente. Debo hacerlo a traves de sus herederas. Realizando un override en cada una.
}

class Cucarachas inherits Plagas {
    var pesoPromedio

    method pesoPromedio() = pesoPromedio
    override method nivelDaño() = población / 2
    override method transmiteEnfermedades() = super() && pesoPromedio >= 10
    override method atacarA(unElemento){
        super(unElemento)
        pesoPromedio += 2
    }
}

class Pulgas inherits Plagas{
    override method nivelDaño() = población * 2
}

class Garrapatas inherits Pulgas {
    override method atacarA(unElemento){
        población += población * 0.20
    }
}

class Mosquitos inherits Plagas{
    override method nivelDaño() = población
    override method transmiteEnfermedades() = super() && población % 3 == 0
}