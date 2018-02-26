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
    
    override func draw(_ rect: CGRect) {
        let Size: CGFloat = 20
       let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 ) - Size / 2, width: Size, height: Size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5657695069, green: 0.5657695069, blue: 0.5657695069, alpha: 0.8)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.textAlignment = .center
        
        
        let formatting = NumberFormatter()
        formatting.numberStyle = .currency
        formatting.locale = .current
        currencyLbl.text = formatting.currencySymbol
        addSubview(currencyLbl)
        
    }
    
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
        clipsToBounds = true
    
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
