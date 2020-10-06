//
//  ViewController.swift
//  tip
//
//  Created by Fariha Mohamed on 9/28/20.
//  Copyright © 2020 Fariha Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl:UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onTap(_ sender: Any) {
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.5, 0.18, 0.2]

        //Calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        //Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format:"$%.2f", total)

    }
}
