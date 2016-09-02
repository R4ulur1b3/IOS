//: Playground - MiniReto: Velocimetro
import UIKit


enum Velocidades : Int {

    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init ( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}


class Auto{

    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()-> ( actual: Int, velocidadEnCadena: String){
        
        
        let old = velocidad.rawValue
        var velocidadDesc = ""
        
        switch old {
        
            case Velocidades.Apagado.rawValue:
                velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadBaja)
                velocidadDesc = "VelocidadBaja"
            case Velocidades.VelocidadBaja.rawValue:
                velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
                velocidadDesc = "VelocidadMedia"
            case Velocidades.VelocidadMedia.rawValue:
                velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)
                velocidadDesc = "VelocidadAlta"
            case Velocidades.VelocidadAlta.rawValue:
                velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
                velocidadDesc = "VelocidadMedia"
            default:
                print ("No hay mas velocidades")
        }
        
        return (velocidad.rawValue, velocidadDesc )
    }
}

var a = Auto()

print("( \(a.velocidad.rawValue) , \(a.velocidad) )")

for i in 0 ..< 20{
    
   let (velocidad, descripcionVelocidad) = a.cambioDeVelocidad()
    print("( \(velocidad) , \(descripcionVelocidad) )")

}