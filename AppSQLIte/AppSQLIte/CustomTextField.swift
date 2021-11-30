//
//  CustomTextField.swift
//  AppSQLIte
//
//  Created by Emmanuel Noriega Vaca on 12/11/21.
//

import UIKit

class CustomTextField: UITextField {
    /*
    override func awakeFromNib() {
        super.awakeFromNib()
        ConfigurarPropiedades()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        ConfigurarPropiedades()
    }
    
    convenience init(rect: CGRect) {
       self.init(frame: rect)
       ConfigurarPropiedades()
   }
    
    func ConfigurarPropiedades() {
        self.borderStyle = .none
        self.layer.borderColor = UIColor.blue.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 15
        self.frame.size = CGSize(width: self.frame.width, height: 40)
    
    }
    
    @IBInspectable var padding: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height:  bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height:  bounds.height)
    }*/
}
