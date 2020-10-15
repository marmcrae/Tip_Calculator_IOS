//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Work and DEV on 10/14/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headingLbl: UILabel!
    @IBOutlet weak var totalAmtLbl: UILabel!
    @IBOutlet weak var tipPercentageTxt: UITextField!
    @IBOutlet weak var billTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalAmtLbl.text = ""
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let billTotal = Double(billTxt.text!)!
        let tipPercentage = Double(tipPercentageTxt.text!)! / 100
        
        let totalTipAmount = billTotal * tipPercentage
        totalAmtLbl.text = "$\(totalTipAmount)"
        
        
    }
    
}

