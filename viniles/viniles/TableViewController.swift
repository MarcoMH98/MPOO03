//  Created by Germán Santos Jaimes on 09/20/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return discos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCell

        cell.textLabel?.text = discos[indexPath.row].nombre
        cell.imageView?.image = UIImage(named: discos[indexPath.row].imagen)
        cell.label.text = ("$\(discos[indexPath.row].precio)")
        

        return cell
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            discos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let shareAction = UIContextualAction(style: .normal, title: "Compartir") { (action, sourcview, completion) in
            
            let defaultText = "Compartiendo mis compras"
            
            let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            
            self.present(activityController, animated: true, completion: nil)
            
            completion(true)
        }
        
        shareAction.backgroundColor = .green
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [shareAction])

        return swipeConfiguration
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailView"{
            if let indexPath = tableView.indexPathForSelectedRow{
                _ = segue.destination as! DetailViewController
                IndexP = indexPath.row
            }
        }
        
    }
    

}
