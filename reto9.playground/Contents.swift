//: Playground - noun: a place where people can play

import UIKit

//contar cuantas vocales y cuantas consonantes tiene un array

func reto9 (str: String) -> (vocales: Int, consonantes: Int){
    //inicialización de constantes
    let vocales = Array("aeiou".characters)
    let consonantes = Array("bcdfghjklmnpqrstvwxyz".characters)
    //inicializacion de variables
    var nvocales = 0
    var nconsonantes = 0
    //reto
    for letra in str.lowercased().characters{
        if vocales.contains(letra){
            nvocales += 1
        }else if consonantes.contains(letra){
            nconsonantes += 1
        }
    }
    return(nvocales, nconsonantes)
}

assert(reto9(str: "hola caracola") == (6,6), "error")