//  Created by macbook on 09/20/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class CuentaPagar: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var TotalCuenta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TotalCuenta.text = "Total a pagar: $\(String(cuentaTotal))"
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProductos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "celdaCuenta"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableViewCell_2_
        
        cell.textLabel?.text = listaProductos[indexPath.row].nombre
        cell.cantidadLabel.text = String (listaProductos[indexPath.row].cantidad)
        cell.precioLabel.text = "$\(String (listaProductos[indexPath.row].precioTotal))"
        
        return cell
    }
    
    @IBAction func PagarCuenta(_ sender: UIButton) {
        
        let menu = UIAlertController(title: "Cuenta Pagada!!!", message: "Gracias por su compra ;)", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        menu.addAction(ok)
        present(menu, animated: true, completion: nil)
    }
    


}
