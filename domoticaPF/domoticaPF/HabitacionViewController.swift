//
//  HabitacionViewController.swift
//  domoticaPF
//
//  Created by Macbook on 11/7/18.
//  Copyright © 2018 iosdevlab. All rights reserved.
//

import UIKit

class HabitacionViewController: UIViewController {

    
    @IBOutlet weak var Letrero1: UILabel!
    
    @IBAction func ApagadorH(_ sender: UISwitch) {
        
        if (sender.isOn == true){
            print("1")
            Letrero1.text = "Encendidas"
        }
        else{
            print("0")
            Letrero1.text = "Apagadas"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Letrero1.text = "Apagadas"
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
