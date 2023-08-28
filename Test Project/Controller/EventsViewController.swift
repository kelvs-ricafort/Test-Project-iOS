//
//  EventsViewController.swift
//  Test Project
//
//  Created by Kelvin Ricafort on 8/17/23.
//

import UIKit

class EventsViewController: UIViewController {
    
    var buttonTag: Int = 0
    var buttonEvent = Date()
    
    @IBOutlet weak var buttonLabel: UILabel!
    @IBOutlet weak var eventTimestamp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonLabel.text = "Button \(buttonTag) Pressed"
        eventTimestamp.text = "\(buttonEvent.formatted(date: .numeric, time: .shortened))"
        
    }

}

