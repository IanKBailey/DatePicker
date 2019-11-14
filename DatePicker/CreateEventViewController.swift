//
//  ViewController.swift
//  DatePicker
//
//  Created by Ian Bailey on 11/14/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class CreateEventViewController: UIViewController {

    
    @IBOutlet weak var eventTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var createEventButton: UIButton!
    @IBOutlet weak var rsvpLabel: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTextField.delegate = self
        
        
        
    }

    
    
    
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
    }
    
}

extension CreateEventViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
