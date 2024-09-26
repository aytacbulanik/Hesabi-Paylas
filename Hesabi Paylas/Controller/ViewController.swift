//
//  ViewController.swift
//  Hesabi Paylas
//
//  Created by Aytaç Bulanık on 23.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tenButtonOut: UIButton!
    
    @IBOutlet weak var thirtyButtonOut: UIButton!
    @IBOutlet weak var twentyButtonOut: UIButton!
    @IBOutlet weak var costField: UITextField!
    @IBOutlet weak var stepperOut: UIStepper!
    @IBOutlet weak var personLabel: UILabel!
    
    var person : Double = 1
    var tip : Double = 0.0
    var costResultManager = CostResultManager()
    var costResult : CostResult?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        person = sender.value
        personLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func buttonColorChanged(_ sender: UIButton) {
        let tag = sender.tag
        let buttonUI = costResultManager.updateButtonUI(tag: tag)
        tenButtonOut.backgroundColor = buttonUI.0
        twentyButtonOut.backgroundColor = buttonUI.1
        thirtyButtonOut.backgroundColor = buttonUI.2
        tip = costResultManager.calculateTip(tag: tag)
        print(tip)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        guard let cost = costField.text else { return }
        guard let doubleCost = Double(cost) else { return }
        
        costResult = CostResult(cost: doubleCost, tip: tip, person: person)
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultSegue" {
            let destinationVC = segue.destination as! ResultVC
            destinationVC.result = costResult
        }
    }
}

