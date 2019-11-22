//
//  ViewController.swift
//  EditingTableViewsLab
//
//  Created by David Lin on 11/21/19.
//  Copyright © 2019 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private var groceries = [[GroceryList]]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    
    func loadData() {
        groceries = GroceryList.createList()
    }
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceryCell", for: indexPath)
        let groceryItem = groceries[indexPath.section][indexPath.row]
        cell.textLabel?.text = groceryItem.name
        cell.detailTextLabel?.text = groceryItem.price.description
        return cell
    }
    func numberOfSections(in tableview: UITableView) -> Int {
        return 2
      }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        switch section
        {
            case 0:
                return "Unpurchased"
            case 1:
                return "Purchased"
            default:
                return "N/A"
        }
    }
}
