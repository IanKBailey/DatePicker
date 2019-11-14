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
    
    
    var event: Event! {
        didSet { // property observer, gets called when the property changes
            //update UI whenever the event changes
            if event.willAttend {
                //update label and button
                rsvpLabel.text = "RSVP YES"
                createEventButton.setTitle("View Event", for: .normal)
            } else {
                rsvpLabel.text = "RSVP NO"
                createEventButton.setTitle("RSVP to Event", for: .normal)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        event = Event(name: "Event name not set", willAttend: false, date: Date())
        
        eventTextField.delegate = self
        datePicker.minimumDate = Date() //User is NOT allow to set an event prior to today's date.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue")
    }
    
    //Here is where we want to setup and pass the event data to the detail view controller
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
    }
    
}

extension CreateEventViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
