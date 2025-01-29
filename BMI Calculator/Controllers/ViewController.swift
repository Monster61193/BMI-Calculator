//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func chanveValueSlider(_ sender: UISlider) {
        
        if sender.tag == 0 {
            heightValue.text = String(format: "%.1f", sender.value) + " m"
        }else{
            weightValue.text = String(format: "%.1f", sender.value) + " kg"
        }
                
    }
    
    


}

Se corrige url y se agrega gitignore
