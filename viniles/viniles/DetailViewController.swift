//  Created by Germán Santos Jaimes on 09/20/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imagenDetail: UIImageView!
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var cantProductos: UITextField!
    
    var precioPagar: Double = 0.0
    // var productos: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = discos[IndexP].nombre
        imagenDetail.image = UIImage(named: discos[IndexP].imagen )
        descripcion.text = discos[IndexP].desc
        
    }

  
    @IBAction func AgregarCarrito(_ sender: Any) {
        
        if cantProductos.text! == ""{
            
            let optionMenu = UIAlertController(title: "Viniles de ayer y hoy!!", message: "Para continuar agregue una cantidad:", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            optionMenu.addAction(okAction)
            present(optionMenu, animated: true, completion: nil)
            
        }else{
            precioPagar = Double(cantProductos.text!)! * discos[IndexP].precio
            
            
            let optionMenu = UIAlertController(title: "Agregar al Carrito", message: "El precio a pagar es: $\(precioPagar) ¿Desea continuar?", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "Si", style: .default, handler: {(action: UIAlertAction) -> Void in
                
                cuentaTotal = cuentaTotal + self.precioPagar
                let newDiscList = ProductoComprado(nombre: discos[IndexP].nombre, precioTotal: self.precioPagar, cantidad: Int(self.cantProductos.text!)!)
                listaProductos.append(newDiscList)
                
            } )
            
            let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
            
            optionMenu.addAction(yesAction)
            optionMenu.addAction(noAction)
            
            present(optionMenu, animated: true, completion: nil)
            
        }
    }
    
    
}
