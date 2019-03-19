//: Playground - noun: a place where people can play

import UIKit

//eliminar las letras repetidas
// hello -> helo, carro -> caro, casa -> cas

func eliminarRepetidas(str:String) -> String{
    var noRepetidas = [Character]() //array de caracteres que inicia vacio
    for letra in str.characters{
        if !noRepetidas.contains(letra){
            noRepetidas.append(letra)
        }
    }
    return String(noRepetidas)
}

assert(eliminarRepetidas(str: "hello") == "helo", "el reto 6 esta mal")