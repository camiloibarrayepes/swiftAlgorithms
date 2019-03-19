//: Playground - noun: a place where people can play

import UIKit

func reto1(str: String)->Bool{
    var letras_usadas = [Character] ()
    for letra in str.characters{
        if letras_usadas.contains(letra){
            return false
        }
        letras_usadas.append(letra)
    }
    return true
}

assert(reto1(str: "hola")==true, "El reto 1 tiene un error")