//: Playground - noun: a place where people can play

import UIKit

var serie = 1...100

for i in serie {
    if i % 5 == 0{
        print ( "\(i)#Bingo" )
    }
    if i % 2 == 0 {
        print ( "\(i)#Número PAR" )
    }else {
        print ( "\(i)#Número IMPAR" )
    }
    if ( i >= 30 && i <= 40 ){
        print ( "\(i)#Viva Swift" )
    }
    
}
