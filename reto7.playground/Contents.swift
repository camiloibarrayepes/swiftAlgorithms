//: Playground - noun: a place where people can play

import UIKit

// eliminar espacios
//"hola    como    estas" -> "hola como estas"

func reto7(str: String) -> String {
    var resultado = [Character]()
    var anteriorEsEspacio = false
    let espacio = Array(" ".characters).first
    
    for letra in str.characters {
        if letra == espacio {
            if anteriorEsEspacio == false {
                resultado.append(letra)
            }
            anteriorEsEspacio = true
        } else{
            anteriorEsEspacio = false
            resultado.append(letra)
        }
    }
    return String(resultado)
}


assert(reto7(str: "Hola   como    estas") == "Hola como estas", "reto tiene error")