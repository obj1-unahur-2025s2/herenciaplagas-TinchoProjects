class Hogar{
  const property nivelDeMugre
  const property confortOfrecido

  method esBueno() = nivelDeMugre <= confortOfrecido / 2
}

class Huerta {
  var capacidadDeProducción
  const property esBueno

  method capacidadDeProducción() = capacidadDeProducción

  method modificarCapacidadDeProducción(nuevaProducción){
    capacidadDeProducción = nuevaProducción
  }
}

class Mascota {
  var nivelSalud
  method nivelSalud() = nivelSalud
  method esBueno() = nivelSalud >= 250
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