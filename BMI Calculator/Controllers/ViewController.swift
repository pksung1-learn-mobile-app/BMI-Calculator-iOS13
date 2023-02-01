//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let calculateBrain: CalculateBrain = CalculateBrain()
    var calculateBrain: CalculateBrainA = CalculateBrainA()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func heightSlideChange(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)    }
    
    
    @IBAction func weightSlideChange(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fkg", sender.value)
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
        }
    }
    
}

