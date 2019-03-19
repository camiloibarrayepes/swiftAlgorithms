//: Playground - noun: a place where people can play

import UIKit

//ROTACION DE LETRAS
// 2 string de entrada
// 1 boolean

//"abcd" dabc" -> true
// "abcd" "bcda" -> true
// "abcd" "abdc" -> false

func reto8(str1: String, str2: String) -> Bool{
    let a1 = Array(str1.characters)
    var a2 = Array(str2.characters)
    
    //hacer un bucle tantas veces como tenga letras en str2
    
    for _ in a2 {
        if a1 == a2 {
            return true
        } else {
            a2.append(a2.removeFirst())
            //añadir al final la letra que tenia al principio
        }
    }
    //si al acabar el bucle no es true, seria false
    return false
}

assert(reto8(str1: "abcd", str2: "dabc") == true, "Hay error")
