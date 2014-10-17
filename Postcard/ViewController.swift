//
//  ViewController.swift
//  Postcard
//
//  Created by Sean Leach on 10/10/2014.
//  Copyright (c) 2014 thisisbamboo.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonWasPressed(sender: UIButton) {
        messageLabel.text="Hello, " + enterNameTextField.text + "!\n"+enterMessageTextField.text
        messageLabel.hidden = false
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
    }

}

