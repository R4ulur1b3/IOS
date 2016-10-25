//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init ( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() ->(actual : Int, velocidadEnCadena : String){
        var mensaje = "";
        
        switch velocidad {
        case .Apagado:
            mensaje = "Velocidad Baja"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
           mensaje = "Velocidad Media"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            mensaje = "Velocidad Alta"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
           mensaje = "Velocidad Media"
            velocidad = .VelocidadMedia
        }
        return (velocidad.rawValue, mensaje)
    }
}

var auto = Auto()
for i in  0 ..< 20{
    print( "(\(auto.velocidad.rawValue) , \(auto.velocidad))")
    auto.cambioDeVelocidad()
}
