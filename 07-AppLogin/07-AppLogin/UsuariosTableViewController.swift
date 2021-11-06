//
//  UsuariosTableViewController.swift
//  07-AppLogin
//
//  Created by Emmanuel Noriega Vaca on 29/10/21.
//

import UIKit

class UsuariosTableViewController: UITableViewController {
    
    var nombres = [String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in lista{
            nombres.append(item.usuario)
        }
        
 }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return nombres.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
          let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
         cell.textLabel?.text = nombres[indexPath.row]
          return cell
      }
      

}
