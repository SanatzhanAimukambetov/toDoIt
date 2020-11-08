//
//  ViewController.swift
//  ToDoIt
//
//  Created by Kairat Zukhra on 05.11.2020.
//
// ------------------------------


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var textField: UITextField!
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.isEnabled = false
        // Observer for textfield, when it is empty or not
        textField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save" {
            let vc = segue.destination as! NewItemViewController
            vc.toDoLabel = textField.text
            vc.deadlineLabel = datePicker.date
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

