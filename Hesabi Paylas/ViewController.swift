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
        print(sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
    }
}

