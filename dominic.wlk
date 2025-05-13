import autos.*
object dominic {
  const autos = []
  method comprarUn(unAuto){
    autos.add(unAuto)
  }
  method autosEnMalasCondiciones() = autos.filter({a=>not a.puedeCorrer()})
  method autosEnCondiciones() = autos.filter({a=>a.puedeCorrer()})
  method enviarAutosEnMalasCondicionesAlTaller(){
    taller.recibirAutos(self.autosEnMalasCondiciones())
  }
  method probarTodosLosAutos(){
    autos.forEach({a=>a.pruebaVelocidad()})
  }
  method venderTodosLosAutos(){
    autos.clear()
  }
  method cantidadAutos() = autos.size()
  method promedioVelMax() = autos.sum({a=>a.velMax()}) / self.cantidadAutos()
  method autoMasRapido() = self.autosEnCondiciones().max({a=>a.velMax()})
  method hayAutoMasRapidoMasVelozQuePromedio() = self.autoMasRapido().velMax() > self.promedioVelMax() * 2
}
object taller {
  const autosAReparar = []
  method recibirAutos(listaDeAutos){
    autosAReparar.addAll(listaDeAutos)
  }
  method repararAutos(){
    autosAReparar.forEach({a=>a.reparar()})
    autosAReparar.clear()
  }
}