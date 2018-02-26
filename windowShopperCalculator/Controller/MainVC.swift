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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        hourlyWage.inputAccessoryView = calBtn
        iteamPrice.inputAccessoryView = calBtn
        
    }

    @objc func calculate() {
        
    }
    

}

