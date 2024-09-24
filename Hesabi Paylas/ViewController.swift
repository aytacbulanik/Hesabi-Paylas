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
    
    var person : Int = 1
    var tip : Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        person = Int(sender.value)
        personLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func buttonColorChanged(_ sender: UIButton) {
        
        if sender.tag == 1 {
            tenButtonOut.backgroundColor = .greenBackground
            thirtyButtonOut.backgroundColor = .white
            twentyButtonOut.backgroundColor = .white
            tip = 10.0
        } else if sender.tag == 2 {
            tenButtonOut.backgroundColor = .white
            thirtyButtonOut.backgroundColor = .white
            twentyButtonOut.backgroundColor = .greenBackground
            tip = 20.0
        } else if sender.tag == 3 {
            tenButtonOut.backgroundColor = .white
            thirtyButtonOut.backgroundColor = .greenBackground
            twentyButtonOut.backgroundColor = .white
            tip = 30.0
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        guard let cost = costField.text else { return }
        //guard let doubleCost = Double(cost) else { return }
        print(person , cost , tip)
        //print(Double(person) * doubleCost)
    }
}

