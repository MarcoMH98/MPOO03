//
//  ViewController.swift
//  hcbaksd
//
//  Created by Macbook on 02/10/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lista :[String] = []
    
    @IBOutlet weak var dato: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        lista = defaults.object(forKey: "lista") as?
            [String] ?? [String]()
        
        for item in lista{
            print(item)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func boton(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let cadena = dato.text{
            lista.append(cadena)
            defaults.set(lista, forKey: "lista")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

