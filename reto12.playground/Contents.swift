//: Playground - noun: a place where people can play

import UIKit

//Reto12
//Entrada 1 string de palabras separadas por espacios
//salida 1 string

//las letras que tienen en comun
//"muñeco" muñeca" -> "muñec"
//"camion camioneta" -> "camion"
//"hola adios" -> " "

func reto12(str:String) -> String{
    let palabras = str.components(separatedBy: " ".lowercased())
    guard let primeraPalabra = palabras.first else { return "" }
    
    var prefijoActual = ""
    var mejorPrefijo = ""
    
    for letra in primeraPalabra.characters{
        prefijoActual.append(letra)
        
        for palabra in palabras{
            if !palabra.hasPrefix(prefijoActual){
                return mejorPrefijo
            }
        }
        mejorPrefijo = prefijoActual
    }
    return mejorPrefijo
}

print(reto12(str: "casa caseta casino"))
print(reto12(str: "muñeco muñeca"))