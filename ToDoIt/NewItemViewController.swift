//
//  NewPlaceViewController.swift
//  ToDoIt
//
//  Created by Kairat Zukhra on 05.11.2020.
//

import UIKit

class NewItemViewController: UIViewController {
    
    var label1: String? = ""
    var label2: Date = Date()
    
    @IBOutlet var toDoItem: UILabel!
    @IBOutlet var daysLeftLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoItem.text = label1
        daysLeftLabel.text = label2.daysFromNowToString()
    }
}

extension Date {
    func daysFromNowToString() -> String? {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.allowedUnits = [.month, . day, .hour]
        return formatter.string(from: Date(), to: self)
    }
}
