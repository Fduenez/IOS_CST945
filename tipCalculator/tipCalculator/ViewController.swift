//
//  ViewController.swift
//  tipCalculator
//
//  Created by Frank Duenez on 8/28/19.
//  Copyright © 2019 Frank Duenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var choice: UISegmentedControl!
    @IBOutlet weak var billAmount: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billAmount.becomeFirstResponder();
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(billAmount.text!) ?? 0
        let tipTotal = (bill * tipPercent[choice.selectedSegmentIndex])
        let amount = tipTotal + bill
        total.text = String(format: "$%.2f", amount)
        tip.text = String(format: "$%.2f", tipTotal)
    }
    
}

