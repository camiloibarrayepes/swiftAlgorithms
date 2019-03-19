//: Playground - noun: a place where people can play

import UIKit

// "Esto es un reto" -> "otsE se nu oter"

//Primera forma

//func reto15(str: String) -> String{
//    let palabras = str.components(separatedBy: " ")
//    var resultado = ""
//    for palabra in palabras{
//        let palabraArray = Array(palabra.characters)
//        let palabraInvertida = palabraArray.reversed()
//        resultado.append(String(palabraInvertida)+" ")
//    }
//    
//    return resultado
//}
//
//print(reto15(str: "Esto es un reto"))


//Segunda forma

func reto15(str: String) -> String{
    let palabras = str.components(separatedBy: " ")
    let invertidas = palabras.map{String($0.characters.reversed())}
    return invertidas.joined(separator: " ")
}

print(reto15(str: "Esto es un reto"))