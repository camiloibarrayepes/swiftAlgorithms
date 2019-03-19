//: Playground - noun: a place where people can play

import UIKit

// 2 strings de entrada
// 1 boolean de salida

//"saco" "cosa"  --> true
//"hola" "hola" --> true
//"casa" "camion" -->false
//"abc" "cba" -->true
//"abca" "cba" -->false
//"a" "aa" --> false


//func retoTres(strUno: String, strDos: String) -> Bool{
//    if(strUno.characters.count == strDos.characters.count){
//        let array1 = Array(strUno.characters)
//        let array2 = Array(strDos.characters)
//        
//        for letra in array1{
//            if array2.contains(letra){ //si el array 2 contiene la letra del array 1
//                //quitamos la letra que acabamos de comprobar
//                let indice = array2.index(of: letra)
//                array2.remove(at: indice!)
//                
//            }else{
//                return false //si no la contiene retorna false
//            }
//        }
//        return true
//        
//    }return false
//
//}

func reto3 (str1: String, str2: String) -> Bool{
    let array1 = Array(str1.characters)
    let array2 = Array(str2.characters)
    return array1.count == array2.count && array1.sorted() == array2.sorted()
    //sorted organizar
}

assert(reto3(str1: "saco", str2: "cosa") == true, "el reto 3 tiene un error")

