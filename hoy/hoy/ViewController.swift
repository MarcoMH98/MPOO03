//
//  ViewController.swift
//  hoy
//
//  Created by Macbook on 01/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var Caja: UITextField!
    

    @IBAction func Guardar (_ sender: UIButton) {
        let defaults = UserDefaults.standard
         
        
        if let dato = Caja.text{
            defaults.set(dato, forKey: "caja")
            
    }
        
        func viewDidLoad() {
            
            super.viewDidLoad()
            let.defaults = UserDefaults.standard
            if let dato = defaults.object(forKey: "caja") as?
            
                String{
                Caja.text = dato
            }
            else{
                caja.text = "hellou"
            }
            
            // Do any additional setup after loading the view, typically from a nib.
        }
    
}

