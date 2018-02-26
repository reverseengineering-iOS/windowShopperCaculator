//
//  CustomTextField.swift
//  windowShopperCalculator
//
//  Created by Saivishal Gummadi on 2/26/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    func customView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2492508562)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
