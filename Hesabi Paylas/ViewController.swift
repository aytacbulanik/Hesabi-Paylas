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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperPressed(_ sender: UIStepper) {
        personLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func buttonColorChanged(_ sender: UIButton) {
        
        if sender.tag == 1 {
            tenButtonOut.backgroundColor = .greenBackground
            thirtyButtonOut.backgroundColor = .white
            twentyButtonOut.backgroundColor = .white
        } else if sender.tag == 2 {
            tenButtonOut.backgroundColor = .white
            thirtyButtonOut.backgroundColor = .white
            twentyButtonOut.backgroundColor = .greenBackground
        } else if sender.tag == 3 {
            tenButtonOut.backgroundColor = .white
            thirtyButtonOut.backgroundColor = .greenBackground
            twentyButtonOut.backgroundColor = .white
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
    }
}

