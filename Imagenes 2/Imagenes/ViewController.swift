//
//  ViewController.swift
//  Imagenes
//
//  Created by Macbook on 03/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.image = UIImage(named: "zorro")
        imagen.layer.cornerRadius = 60
    
        
        
        
        
    }

    


}

