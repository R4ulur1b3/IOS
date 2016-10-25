//
//  ColoresStruct.swift
//  MasFeliz
//
//  Created by J Raul Uribe S on 24/10/16.
//  Copyright © 2016 J Raul Uribe S. All rights reserved.
//

import Foundation
import UIKit

struct Colores {

    let colores = [
        UIColor(red:210/255, green:90/255, blue: 45/255, alpha: 1),
        UIColor(red:40/255, green:170/255, blue: 45/255, alpha: 1),
        UIColor(red:3/255, green:180/255, blue: 90/255, alpha: 1),
        UIColor(red:210/255, green:190/255, blue: 5/255, alpha: 1),
        UIColor(red:120/255, green:120/255, blue: 50/255, alpha: 1),
        UIColor(red:130/255, green:80/255, blue: 90/255, alpha: 1),
        UIColor(red:130/255, green:130/255, blue: 130/255, alpha: 1),
        UIColor(red:3/255, green:50/255, blue: 90/255, alpha: 1)
        
    ]
    
    func regresaColorAleatorio() -> UIColor {
       
        let position = Int ( arc4random() ) % colores.count
        
        return colores[position]
    }
}
