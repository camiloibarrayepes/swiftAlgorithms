//: Playground - noun: a place where people can play

import UIKit

// "ab" "ab" "ba"

func reto14(string: String, actual: String) {
    
    let longitud = string.characters.count
    let strArray = Array(string.characters)
    
    if longitud == 0 {
        print(actual)
        print("*******")
    } else {
        // se pone esta condicion para que imprima solo las que tengan la misma longitud que la original
        if actual.characters.count == longitud{
                print(actual)
        }
        //para cada caracter del string
        for i in 0..<longitud {  //desde 0 hasta longitud
            //i=0 iz "" der "bc"
            //i=1 iz "a" der "c"
            //i=2 iz "ab" der ""
            
            //coger parte izq y der del string dejando la letra i en el limbo
            let izq = String(strArray[0..<i])
            let der = String(strArray[i+1..<longitud])
            
            //utilizar recursividad
            reto14(string: izq + der, actual: actual+String(strArray[i]))
        }
    }
}

reto14(string: "abc", actual: "")