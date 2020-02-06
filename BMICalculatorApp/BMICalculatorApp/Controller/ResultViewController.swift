//
//  ResultViewController.swift
//  BMICalculatorApp
//
//  Created by Ranjan, Nishant [GCB-OT NE] on 26/1/20.
//  Copyright © 2020 Ranjan, Nishant [GCB-OT NE]. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String?
    
    var advice : String?
    
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
