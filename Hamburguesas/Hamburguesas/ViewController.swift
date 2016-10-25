//
//  ViewController.swift
//  Hamburguesas
//
//  Created by J Raul Uribe S on 24/10/16.
//  Copyright © 2016 J Raul Uribe S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var hamburguer: UILabel!
    
    var coleccionDePaises = ColeccionDePaises()
    var coleccionDeHaburguesa = ColeccionDeHamburguesa()
    var color = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func asignarHamburguesaYpais() {
    
        
        country.text = coleccionDePaises.obtenPais()
        hamburguer.text = coleccionDeHaburguesa.obtenHamburguesa()
        view.backgroundColor = color.regresaColorAleatorio()
        view.tintColor = color.regresaColorAleatorio()
    }

}

