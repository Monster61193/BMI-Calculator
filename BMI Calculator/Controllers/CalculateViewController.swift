//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func chanveValueSlider(_ sender: UISlider) {
        //Change value of height Slider
        if sender.tag == 0 {
            heightValue.text = String(format: "%.2f", sender.value) + " m"
        }else{
            //Change value of weight Slider
            weightValue.text = String(format: "%.0f", sender.value) + " kg"
        }
        
    }
    
    @IBAction func calculateAction(_ sender: Any) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "showResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = calculatorBrain.getBMIValue()
            destinationVC.backgroundColor = calculatorBrain.getBMIColor()
            destinationVC.adviceText = calculatorBrain.getAdvice()
        }
    }
    
}


