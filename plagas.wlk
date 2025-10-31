class Plagas {
    const property población
    method transmiteEnfermedades() = población >= 10
}

class Cucarachas inherits Plagas {
    const property pesoPromedio
    method nivelDaño() = población / 2
    override method transmiteEnfermedades() = población >= 10 && pesoPromedio >= 10
}

class Pulgas inherits Plagas{
    method nivelDaño() = población * 2
}

class Garrapatas inherits Pulgas {

}

class Mosquitos inherits Plagas{
    method nivelDaño() = población
    override method transmiteEnfermedades() = población % 3 == 0
}