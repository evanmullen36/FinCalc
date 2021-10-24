//
//  ViewController.swift
//  FinCalc
//
//  Created by Evan Mullen on 10/23/21.
//

import UIKit
import Charts

class ViewController: UITableViewController, ChartViewDelegate {
    
    let functions = ["Rule of 72","Future Value", "Simple Interest"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerCell()
    }

    private func registerCell() {
        let cell = UINib(nibName: "Cell",
                            bundle: nil)
        self.tableView.register(cell,
                                forCellReuseIdentifier: "cellOne")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne") as? Cell else {
            return UITableViewCell()
        }
        
        cell.cellLabel.text = self.functions[indexPath.row]
        
        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt   indexPath: IndexPath) {
        if ((indexPath.section == 0) && (indexPath.row == 0)) {
            performSegue(withIdentifier: "segueOne", sender: nil);
        } else if ((indexPath.section == 0)) && (indexPath.row == 1) {
            performSegue(withIdentifier: "segueTwo", sender: nil)
        } else {
            performSegue(withIdentifier: "segueTwo", sender: nil)
            }
        }
    }

