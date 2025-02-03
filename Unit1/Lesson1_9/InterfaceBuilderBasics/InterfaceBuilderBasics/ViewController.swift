//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by LaShae Lawrence on 2/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
    

}

