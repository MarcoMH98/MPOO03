//
//  registra2.swift
//  proyecto2_contraseña
//
//  Created by Macbook on 15/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import Foundation

class registra2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    struct registros {
        var usuario_1 : String
        var contra_1 : String
        var repC_1 : String
    }
    
    var registrados_1 : [registros] = []

}
