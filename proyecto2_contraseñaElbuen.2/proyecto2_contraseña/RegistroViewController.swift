//
//  RegistroViewController.swift
//  proyecto2_contraseña
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class RegistroViewController: UIViewController {
    
    @IBOutlet weak var correoDeUsuario: UITextField!
    @IBOutlet weak var contrasenaDeUsuario: UITextField!
    @IBOutlet weak var repeticionContrasena: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defautls = UserDefaults.standard
        
        if let correo = defautls.object(forKey: "Caja") as? String{
            correoDeUsuario.text = correo
        }
        else{
            correoDeUsuario.text = ""
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func REGISTRATRE(_ sender: UIButton) {
        
        let defautls = UserDefaults.standard
        
        if let correo = correoDeUsuario.text{
            defautls.set(correo, forKey: "correo de usuario")
        }
        
        let EmailDeUsuario = correoDeUsuario.text
        let contrasena = contrasenaDeUsuario.text
        let repetirC = repeticionContrasena.text
        
        if (EmailDeUsuario?.isEmpty)! || (contrasena?.isEmpty)! || (repetirC?.isEmpty)!
        {
            print("entro")
            let alert = UIAlertController(title: "Primero Llena el Formulario", message: "Por Favor :)" , preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: true, completion: nil)
        }
        else{
            
            /*-------Campo de Registro-----------------*/
            if let dato = correoDeUsuario.text{
                defautls.set(dato, forKey: "EmailDeUsuario")
            }
            if let dato = contrasenaDeUsuario.text{
                defautls.set(dato, forKey: "contrasena")
            }
            if let dato = repeticionContrasena.text{
                defautls.set(dato, forKey: "repetirC")
            }
            /*------------------------------------------*/
            
            
            if (contrasenaDeUsuario.text != repeticionContrasena.text){
                
                let myAlert3 = UIAlertController(title: "Las Contraseñas No Coinciden!!", message: "Ingrese De Nuevo Las Contraseñas :)", preferredStyle: .alert)
                myAlert3.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(myAlert3, animated: true, completion: nil)
                
            }
            else{
                let newRegisterList = registrados(usuarios: correoDeUsuario.text!, contrasenas: contrasenaDeUsuario.text!)
                rguardados.append(newRegisterList)
                
                
                performSegue(withIdentifier: "registerAccess", sender: nil)
            }
            
            
            
            
            
        }
        
        
    }
    

}
