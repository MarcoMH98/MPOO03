//
//  ViewController.swift
//  proyecto2_contraseña
//
//  Created by Macbook on 08/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Usuario: UITextField!
    @IBOutlet weak var Contraseña: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defautls = UserDefaults.standard
    }
    

    
    @IBAction func Ingresar(_ sender: UIButton) {
        
        /* Alerta de campos vacios */
        if (Usuario.text?.isEmpty)! || (Contraseña.text?.isEmpty)!{
            let alerta3 = UIAlertController(title: "Algunos Campos Están Vacios", message: "Rellena el formulario completamente porfavor :)", preferredStyle: .alert)
            alerta3.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alerta3, animated: true, completion: nil)
            
        }
        else{
            let defautls = UserDefaults.standard
            let ingresaUsuario = Usuario.text
            let ingresoContraseña = Contraseña.text
            
            //Captura de datos
            if let dato = Usuario.text{
                defautls.set(dato, forKey: "ingresaUsuario")
            }
            if let dato = Contraseña.text{
                defautls.set(dato, forKey: "ingresoContraseña")
            }
            
            //Ingreso de datos a la lista
            let paraIngresar = Ingreso(usuario: Usuario.text!, contrasena: Contraseña.text!)
            IngresoUsers.append(paraIngresar)
            
            
            var size1 = rguardados.count
            print(size1)
            
            var i = 0
            
            /*
             Dos vectores
             Para guardar datos en la ventana de ingreso IngresoUsers
             Para guardar datos en la ventana de registro rguardados
            */
            while i < size1 {

                if (IngresoUsers[i].usuario == rguardados[i].usuarios) && (IngresoUsers[i].contrasena == rguardados[i].contrasenas){
    
                    performSegue(withIdentifier: "acessoGranted", sender: nil)
                }
                 size1 -= 1
            }
            
            
        }
        
        
        
        
        
    }
}
