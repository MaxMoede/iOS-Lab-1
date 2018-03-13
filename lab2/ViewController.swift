//
//  ViewController.swift
//  lab2
//
//  Created by Max Moede on 1/12/18.
//  Copyright © 2018 Max Moede. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var otherColorLabel: UILabel!
    @IBOutlet weak var textFieldLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = "Status"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentThing(_ sender: UISegmentedControl) {
        myLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func sliderThing(_ sender: UISlider) {
        if (sender.value <= 33){
            colorLabel.textColor = .red
        } else if (sender.value > 33 && sender.value <= 66){
            colorLabel.textColor = .yellow
        } else {
            colorLabel.textColor = .green
        }
        otherColorLabel.text = String(sender.value)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldLabel.text = textField.text
        textField.resignFirstResponder()
        return true
    }
    
}

