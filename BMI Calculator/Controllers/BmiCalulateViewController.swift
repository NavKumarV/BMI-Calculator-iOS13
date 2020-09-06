//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class BmiCalulateViewController: UIViewController {

    var bmiBrain = BmiBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value);
        heightLabel.text =  "\(height)m";
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value);
        weightLabel.text =  "\(weight)Kg";
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        
        bmiBrain.calculateBmi(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationSV = segue.destination as! ResultViewController
            destinationSV.bmiValue = bmiBrain.getBmiValue()
            destinationSV.colorValue = bmiBrain.getColorValue()
            destinationSV.adviceValue = bmiBrain.getAdviceValue()
        }
    }
}

