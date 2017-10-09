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
    
    //MARK: Outlets
    
    @IBOutlet weak var tableHistory: UITableView!
    
    
    //MARK: Properties
    
    var history: [RPSMatch]!
    
    
    //MARK: Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return history.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ROC_history", for: indexPath)
        let match = self.history[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = victoryStatusDescription(match)
        cell.detailTextLabel!.text = "\(match.p1) vs. \(match.p2)"
        return cell
        
    }
    
    func victoryStatusDescription(_ match: RPSMatch) -> String {
        
        if (match.p1 == match.p2) {
            return "Tie."
        } else if (match.p1.defeats(match.p2)) {
            return "Win!"
        } else {
            return "Loss."
        }
    }
    
    @IBAction func dismissHistory(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
