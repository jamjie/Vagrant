//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Jeffrey Gunnarsson on 4/23/17.
//  Copyright © 2017 Jeffrey Gunnarsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressedOutside(_ sender: UIButton){
        self.titleLabel.text = "Outside!"
    }

    @IBAction func buttonSend(_ sender: UIButton) {
        labelMessage.isHidden = false
        labelMessage.text = fieldMessage.text
        labelMessage.textColor = UIColor.red
        fieldMessage.text = ""
        fieldMessage.resignFirstResponder()
        sendButton.setTitle("Message Sent", for:UIControlState.normal)
    }
    
    @IBOutlet var fieldMessage: UITextField!
    
    @IBOutlet var labelMessage: UILabel!
    
    @IBOutlet var textBox: UITextField!
    
    @IBAction func buttonPressedDragIn(_ sender: Any) {
        self.titleLabel.text = "Dragon?"
        
    }
    @IBAction func buttonPressedDragOut(_ sender: Any) {
        self.titleLabel.text = "Drag out."
    }
    @IBOutlet var titleLabel: UILabel!

    @IBAction func buttonPressed(_ sender: UIButton) {
        self.titleLabel.text = self.textBox.text;
        self.textBox.resignFirstResponder();
    }
}

