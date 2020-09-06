//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Naveen Kumar V on 02/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var adviceValue: String?
    var colorValue: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var resultScreen: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = adviceValue
        resultScreen.backgroundColor = colorValue
    }
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
