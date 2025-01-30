//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Adrian Dardon Flores on 29/01/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var result: String!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ResultLabel.text = self.result
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        
        dismiss(animated: true)
    }

}
