//
//  ViewController.swift
//  MasFeliz
//
//  Created by J Raul Uribe S on 12/09/16.
//  Copyright © 2016 J Raul Uribe S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var positiveMessage: UILabel!
    let color = Colores()
    let frase = Frases()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        positiveMessage.text = frase.obtenerNuevaFraseAleatoria()
        
        let colorAleatorio = color.regresaColorAleatorio()
        
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio;
    }

}

