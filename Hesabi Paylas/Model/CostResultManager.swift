//
//  CostResultManager.swift
//  Hesabi Paylas
//
//  Created by Aytaç Bulanık on 24.09.2024.
//

import UIKit

struct CostResultManager {
    var costResult: CostResult?
    
    func updateButtonUI(tag : Int) -> (UIColor, UIColor , UIColor) {
        if tag == 1 {
            return (.greenBackground, .white, .white)
        } else if tag == 2 {
            return (.white , .greenBackground, .white)
        } else  {
            return (.white , .white , .greenBackground)
        }
    }
    
    func calculateTip(tag : Int) -> Double {
        if tag == 1 {
            return 10
        } else if tag == 2 {
            return 20
        } else  {
            return 30
        }
    }
}
