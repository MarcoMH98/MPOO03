//
//  ViewController.swift
//  UserDefaults
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 gato3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caja: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //recuperar datos:
        let defautls = UserDefaults.standard
        
        if let dato = defautls.object(forKey: "Caja") as? String{
            caja.text = dato
        }
        else{
            caja.text = "No hay ni madres"
        }
        
    }

    @IBAction func guardar(_ sender: UIButton) {
        //instanciar dar nombre y tipo de dato:
                            //variable estatica porque no queremos otra referencia en memoria para saber exactamente cual manejar
        let defautls = UserDefaults.standard
        
        if let dato = caja.text{
            defautls.set(dato, forKey: "Caja")
        }
    }
    
}

