//
//  SalaViewController.swift
//  domoticaPF
//
//  Created by Macbook on 11/7/18.
//  Copyright © 2018 iosdevlab. All rights reserved.
//

import UIKit

class SalaViewController: UIViewController {

    @IBOutlet weak var Letrero3: UILabel!
    
    @IBAction func Apagador3(_ sender: UISwitch) {
        if (sender.isOn == true){
            print("1")
            Letrero3.text = "Encendidas!!"
        }
        else{
            print("0")
            Letrero3.text = "Apagadas!!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Letrero3.text = "Apagadas!!"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
