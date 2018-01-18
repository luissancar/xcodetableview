//
//  ViewController.swift
//  tableview3
//
//  Created by Nosferatu on 17/1/18.
//  Copyright © 2018 luissancar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    let data:[[String]] = [
                            ["Cell a", "Cell b", "Cell c"],
                            ["Cell 1", "Cell 2", "Cell 3"],
                            ["Cell I", "Cell II", "Cell III"]
                          ]
    let subt:[[String]] = [
        ["Subt a", "Subt b", "Subt c"],
        ["Subt 1", "Subt 2", "Subt"],
        ["Subt I", "Subt II", "Subt III"]
    ]
    let headers:[String] = ["Letra", "Número", "Romano"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        cell.detailTextLabel?.text = subt[indexPath.section][indexPath.row]
        if (indexPath.row == 0)  {
            cell.imageView?.image = UIImage(named: "uno")}
        if (indexPath.row == 1)  {
            cell.imageView?.image = UIImage(named: "dos")}
        if (indexPath.row == 2)  {
            cell.imageView?.image = UIImage(named: "tres")}
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

