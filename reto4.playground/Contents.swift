//: Playground - noun: a place where people can play

import UIKit

//RETO 4, un string dentro de otro
//2 string de entrada y un boolean de salida


//str1: "camion", str2: "yo tengo un camion" -->true


//func reto4 (str1: String, str2: String) -> Bool{
//    if str1.contains(str2){
//        retur true
//    }else{
//        if str2.contains(str1){
//            return true
//        }else{
//            return false
//        }
//    }
//}

func reto44 (str1: String, str2: String) -> Bool{
    return str1.uppercased().contains(str2.uppercased()) || str2.uppercased().contains(str1.uppercased())
}

assert(reto44(str1: "Camion", str2: "Yo tengo un camion")== true, "reto 44 tiene error")
