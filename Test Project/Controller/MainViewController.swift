//
//  ViewController.swift
//  Test Project
//
//  Created by Kelvin Ricafort on 8/17/23.
//

import UIKit

class MainViewController: UIViewController {
    
    let myTime = Date()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "buttonSegue", sender: self)
        

        print("Button \(sender.tag) Pressed")
        print(myTime.formatted(date: .numeric, time: .shortened))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buttonSegue" {
            if let eventsVC = segue.destination as? EventsViewController {
                if let button = sender as? UIButton {
                    eventsVC.buttonTag = button.tag
                    eventsVC.buttonEvent = myTime
                    
                }
            }
        }
    }
}

