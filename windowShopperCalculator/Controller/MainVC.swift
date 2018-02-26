//
//  ViewController.swift
//  windowShopperCalculator
//
//  Created by Saivishal Gummadi on 2/23/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var hourlyWage: CustomTextField!
    @IBOutlet weak var iteamPrice: CustomTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        hourlyWage.inputAccessoryView = calBtn
        iteamPrice.inputAccessoryView = calBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate() {
        
        if let hourlyWage = hourlyWage.text, let iteamprice = iteamPrice.text {
            if let wagee = Double(hourlyWage), let price = Double(iteamprice) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(wage.getWage(forWage: wagee, forprice: price))"
            }
        }
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        hourlyWage.text = ""
        iteamPrice.text = ""
    }
}

