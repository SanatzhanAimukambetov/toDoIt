//
//  ViewController.swift
//  ToDoIt
//
//  Created by Kairat Zukhra on 05.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var newItem: Item?
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.isEnabled = false
        
        textField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    }
    
    func saveItem() {
        
        newItem = Item(item: textField.text!, date: datePicker.date)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save" {
            let vc = segue.destination as! NewItemViewController
            vc.label1 = textField.text
            vc.label2 = datePicker.date
        } else {
            return
        }
    }
}

extension ViewController {
    
    @objc private func textFieldChanged() {
        if textField.text?.isEmpty == false {
            saveButton.isEnabled = true
        } else {
            saveButton.isEnabled = false
        }
    }
}

