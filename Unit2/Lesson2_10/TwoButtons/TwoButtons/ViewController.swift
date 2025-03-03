//
//  ViewController.swift
//  TwoButtons
//
//  Created by LaShae Lawrence on 3/2/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = "Placeholder"
        textField.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

