//: Mini reto

import UIKit

var numeros = 0...100

//Impresion de numeros del 0 al 100 con for
for numeros in 0...100{
    
    //Uso de condiciones if
    if numeros % 5 == 0{
        print("\(numeros)" + "#Bingo!!!")
    }
    if numeros % 2 == 0{
        print("\(numeros)" + "#Par!!!")
    }else{
        print("\(numeros)" + "#Impar!!!")
    }
    if numeros >= 30 && numeros <= 40{
        print("\(numeros)" + "#VivaSwift!!!")
    }
}




