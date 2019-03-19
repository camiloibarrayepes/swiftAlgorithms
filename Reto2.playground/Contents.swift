//: Playground - noun: a place where people can play

import UIKit

//String de entrada
//Boleano de salida

func palindromo (str: String) -> Bool {
    let string_original = Array(str.characters)
    let string_invertido = Array(str.characters.reversed())
    return string_original == string_invertido
}


assert(palindromo(str: "ala")==true, "hay error")
