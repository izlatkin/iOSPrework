//
//  ViewController.swift
//  CodePath_Prework
//
//  Created by Ilya Zlatkin on 02.08.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amount from text filed
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by mult tip * tipPercentage
        let tipPercantages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercantages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

