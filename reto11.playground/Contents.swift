//: Playground - noun: a place where people can play

import UIKit

//reto 11, tres letras diferentes
//entrada 2 string
// salida 1 bool

//"casa" y "cosa" -> true
//"casas" y "casa" -> false porque la longitud no es la misma
//"caballo" y "camello" ->true, tiene misma longitud y solo cambian 2 letras
//"amigo" y "elijo" -> true, tiene 3 letras diferentes y misma longitud
//"martillo" y "molinill" -> false, tiene mas de 3 letras diferentes y misma longitud 

func reto11(str1: String, str2: String) -> Bool{
    //primero asegurarnos de que tienen la misma longitud
    var string1 = Array(str1.lowercased().characters)
    var string2 = Array(str2.lowercased().characters)
    var letrasDiferentes = 0
    
    if string1.count == string2.count {
        while string1.count != 0 {
        
            if string1.removeFirst() != string2.removeFirst(){
                letrasDiferentes += 1
            }
        }
    } else {
        return false
    }
    return letrasDiferentes <= 3
}

assert(reto11(str1: "casa", str2: "cosa") == true, "error")