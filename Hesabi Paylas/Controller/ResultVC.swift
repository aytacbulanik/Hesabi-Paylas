//
//  ResultVC.swift
//  Hesabi Paylas
//
//  Created by Aytaç Bulanık on 27.09.2024.
//

import UIKit

class ResultVC: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var result : CostResult?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let result else { return }
        let doubleCost = Double(result.cost)
        let tip = Double(result.tip)
        let person = Double(result.person)
        let sonuc = (doubleCost + (doubleCost * tip/100)) / person
        
    }
    

    
    @IBAction func reCalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
