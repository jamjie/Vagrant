//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Jeffrey Gunnarsson on 4/23/17.
//  Copyright © 2017 Jeffrey Gunnarsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isSent = false;
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet var fieldMessage: UITextField!
    @IBOutlet var labelMessage: UILabel!
    @IBOutlet weak var fieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSend(_ sender: UIButton) {
        if(isSent == false){
            // Unhide message and name labels
            labelMessage.isHidden = false
            labelName.isHidden = false
            // Set text to what was entered in fields
            labelMessage.text = fieldMessage.text
            labelName.text = fieldName.text
            // Set colors
            labelMessage.textColor = UIColor.red
            labelName.textColor = UIColor.blue
            // Clear fields
            fieldMessage.text = ""
            fieldName.text = ""
            // Change send button text
            sendButton.setTitle("Message Sent", for:UIControlState.normal)
            isSent = true
        }
        // Resign keyboard in any case
        fieldMessage.resignFirstResponder()
        fieldName.resignFirstResponder()
        
    }
    
}

