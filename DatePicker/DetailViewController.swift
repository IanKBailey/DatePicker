//
//  DetailViewController.swift
//  DatePicker
//
//  Created by Ian Bailey on 11/14/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
 
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var selectedDateLabel: UILabel!
    @IBOutlet weak var switchControl: UISwitch!
    
    
    
    
    
    
    // we need an (Event) from source view controller (CreateEventViewController)
    var event: Event? //default value is nil
    
    
    //DateFormatter will help us to format the Date object
    // in a more readable format
    //lazy variable - a variable that gets created the first time it's needed
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy, h:mm a" //.dateFormat we have more flexibility with the appearance of the string
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .medium
        return formatter
    }() //calls the fucntion (closure)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        guard let date = event?.date else {
            return
        }
        selectedDateLabel.text = dateFormatter.string(from: date)
//        selectedDateLabel.text
        //set switch position base on value of willAttend, true or false
        //if true switch will be turned on, else switch will be turned off
        switchControl.isOn = event?.willAttend ?? false
        
        messageLabel.text = event?.name ?? "Event name not available"
    }
    
    
    @IBAction func rsvpChanged(_ sender: UISwitch) {
    }
    
    
    
}
