//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Ranjan, Nishant [GCB-OT NE] on 26/1/20.
//  Copyright © 2020 Ranjan, Nishant [GCB-OT NE]. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmivalue = "0.0"
    
    var calBrain = CalculatorBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func heightSliderAction(_ sender: UISlider) {
        //print(heightSlider.value)
        print(String(format:"%.2f", sender.value))
       let height = String(format:"%.2f", sender.value)
         heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
         //print(weightSlider.value)
         print(String(format:"%.0f", sender.value))
        
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        
        let weight =  weightSlider.value
        let height = heightSlider.value
        
        calBrain.calculateBMIValue(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calBrain.getBMIValue()
            destinationVC.advice = calBrain.getAdvice()
            destinationVC.color = calBrain.getColor()
            
        }
     }
 
    
}

