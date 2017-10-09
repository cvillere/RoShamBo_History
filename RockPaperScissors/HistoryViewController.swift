//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Christian Villere on 10/1/17.
//  Copyright © 2017 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    
    //Mark: Outlets
    
    @IBOutlet weak var tableHistory: UITableView!
    
    
    //MARK: Properties
    
    var history = [RPSMatch]()
    
    
    //MARK: Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return history.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ROC_history", for: indexPath)
        let match = self.history[indexPath.row]
        //struggling with how to implement below
        //cell.textLabel?.text = "\(winner) beats \(loser)"
        return cell
        
    }
    
    

    
    
    
    
    
    

    
    
}
