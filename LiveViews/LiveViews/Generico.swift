//
//  Generico.swift
//  LiveViews
//
//  Created by Macbook on 03/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//

import UIKit

class Generico: UIButton {
    
    var colorFondo : UIColor = UIColor.green

   override func awakeFromNib() {
        print("awake")
  //  layer.backgroundColor
    }

    

    override func draw(_ rect: CGRect) {
        /*
         Esta función sirve para refrscar las "vistas"
         */
        print("draw")
    }
 
    
}
