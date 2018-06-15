//
//  ViewController.swift
//  Todoey
//
//  Created by Jose Pino on 15/6/18.
//  Copyright © 2018 Jose Pino. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destory"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    //MARK: - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count  // Devolvemos la cantidad del array para crear celdas
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    
    
    //MARK: - Tableview Delegate Methods. Fired when tap on cells
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (itemArray[indexPath.row]) // Imprimimos cuando una celda es seleccionada con un tap
        tableView.deselectRow(at: indexPath, animated: true) // Para que cuando le das un tap se vuelva a desmarcar o si no se queda en gris la fila
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark { // Verificamos si ya está seleccionada una fila. Si es que ya está, entonces desmarcamos el check.
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark // Si no tiene un check, entonces le ponemos el check cuando el usuario hace un tap en la fila
        }
        
        
    }
    
    
}

