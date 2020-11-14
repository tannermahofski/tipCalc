//
//  ViewController.swift
//  tipCalc
//
//  Created by Tanner Mahofski on 11/13/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InitAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.20, 0.25]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

