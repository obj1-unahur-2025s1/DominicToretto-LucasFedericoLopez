object ferrari {
  var motor = 87
  method puedeCorrer() = motor >= 65
  method reparar(){
    motor = 100
  }
  method velMax() = 110 + if(motor > 75)15 else 0
  method pruebaVelocidad(){
    motor = 0.max(motor - 30)
  }
}
object laFlechaRubi {
  var property combustible = gasolina
  var litrosCombustible = 100
  var color = azul
  method condicionesOptimasDeCombustible() = litrosCombustible > combustible.nivelMinimo()
  method puedeCorrer() = self.condicionesOptimasDeCombustible() and color == rojo
  method reparar(){
    litrosCombustible = litrosCombustible * 2
    color = color.cambiarDeColor()
  }
  method pruebaVelocidad(){
    combustible = 0.max(litrosCombustible - 5)
  }
  method velMax() = litrosCombustible * 2 + combustible.calculoAdicional(litrosCombustible)
}
object elIntocable {
  var puedeCorrer = true
  method puedeCorrer() = puedeCorrer
  method reparar(){
    puedeCorrer = true
  }
  method pruebaVelocidad(){
    puedeCorrer = false
  }
  method velMax() = 45
}
object elLambo {
  var velMax = 50
  var puedeCorrer = false
  var neumaticos = 2
  method puedeCorrer() = neumaticos == 4
  method reparar(){
    velMax += 100
    puedeCorrer = true
    neumaticos = 4
  }
  method pruebaVelocidad(){
    neumaticos - 1
  }
  method velMax() = velMax
}
object gasolina {
  method nivelMinimo() = 85
  method calculoAdicional(litros) = 10
}
object nafta {
  method nivelMinimo() = 50
  method calculoAdicional(litros) = -1*(litros * 2)*0.10
}
object nitrogenoLiquido {
  method nivelMinimo() = 0
  method calculoAdicional(litros) = litros * 2 * 10
}
object azul {
  method cambiarDeColor() = verde
}
object rojo {
  method cambiarDeColor() = azul
}
object verde {
  method cambiarDeColor() = rojo
}