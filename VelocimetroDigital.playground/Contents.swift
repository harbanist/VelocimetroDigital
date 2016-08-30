//  Peer Graded Assignment: Un velocímetro de un automóvil digital
//  Curso: Swift: programar para iOS - Semana 4
//  Created by Jesus Manuel Porras Valdez on 8/30/16..

import UIKit

//------------Enumeración de Velocidades-----------
enum Velocidades: Int{
    case    Apagado = 0,
            VelocidadBaja = 20,
            VelocidadMedia = 50,
            VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

//-----------------Clase Auto----------------------
class Auto {
    var velocidad: Velocidades
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (Int, String){
        if (velocidad == .Apagado) {  velocidad = .VelocidadBaja }
        else if (velocidad == .VelocidadBaja) { velocidad = .VelocidadMedia }
        else if (velocidad == .VelocidadMedia) { velocidad = .VelocidadAlta }
        else if (velocidad == .VelocidadAlta) { velocidad = .VelocidadMedia }
        return (velocidad.rawValue, String(Velocidades(rawValue: velocidad.rawValue)!))
    }
}

//Crea objeto auto con la clase Auto
var auto = Auto()

//Imprime Velocidad inicial
print ("Iteración 0: \((auto.velocidad.rawValue, String(Velocidades(rawValue: auto.velocidad.rawValue)!)))")

//Imprime 20 iteraciones de Aceleraciones
for i in 1...20{
    print ("Iteración \(i): \(auto.cambioDeVelocidad())")
}
