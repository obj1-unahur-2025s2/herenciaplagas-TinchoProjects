import plagas.*
class Hogar{
  var nivelDeMugre
  const property confortOfrecido
  method nivelDeMugre() = nivelDeMugre
  method esBueno() = nivelDeMugre <= confortOfrecido / 2

  method recibirAtaqueDe(unaPlaga){
    nivelDeMugre -= unaPlaga.daño()
  }
}

class Huerta {
  var capacidadDeProducción
  const property esBueno

  method capacidadDeProducción() = capacidadDeProducción

  method recibirAtaqueDe(unaPlaga){
    if(unaPlaga.transmiteEnfermedades()){
      capacidadDeProducción -= unaPlaga.daño() * 0.10 - 10
    } else {
      capacidadDeProducción -= unaPlaga.daño() * 0.10
    }
  }
}

class Mascota {
  var nivelSalud
  method nivelSalud() = nivelSalud
  method esBueno() = nivelSalud >= 250
  method recibirAtaqueDe(unaPlaga){
    if(unaPlaga.transmiteEnfermedades()){
      nivelSalud -= unaPlaga.daño()
    }
  }
}

class Barrio{
  const elementos = []
  method esCopado() = self.elementosBuenos().size() > self.elementosNoBuenos().size()
  
  method elementosBuenos() = elementos.filter({e => e.esBueno()})
  method elementosNoBuenos() = elementos.filter({e => !e.esBueno()})

  method agregarElemento(nuevoElemento){
    elementos.add(nuevoElemento)
  }
}