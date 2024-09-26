//
//  ResultVC.swift
//  Hesabi Paylas
//
//  Created by Aytaç Bulanık on 27.09.2024.
//

import UIKit

class ResultVC: UIViewController {
    
    var result : CostResult?
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let result else { return }
        let result = (doubleCost + (doubleCost * tip/100)) / person
    }
    

    

}
