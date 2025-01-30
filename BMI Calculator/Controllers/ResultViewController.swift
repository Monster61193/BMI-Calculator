//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Adrian Dardon Flores on 29/01/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//


import UIKit

class ResultViewController: UIViewController {
    
    var result: String!
    var backgroundColor:UIColor!
    var adviceText:String!
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    @IBOutlet weak var Background: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        
        dismiss(animated: true)
    }

    func setupView()  {
        ResultLabel.text = self.result
        Background.backgroundColor = self.backgroundColor
        AdviceLabel.text = self.adviceText
    }
}
