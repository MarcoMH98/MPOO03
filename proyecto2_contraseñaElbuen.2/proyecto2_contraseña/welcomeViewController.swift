//
//  welcomeViewController.swift
//  proyecto2_contraseña
//
//  Created by Macbook on 17/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController {

    @IBAction func logoutUser(_ sender: Any) {
        performSegue(withIdentifier: "logoutUserExit", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
