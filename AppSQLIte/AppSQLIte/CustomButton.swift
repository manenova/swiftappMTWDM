//
//  CustomButton.swift
//  AppSQLIte
//
//  Created by Emmanuel Noriega Vaca on 12/11/21.
//

import UIKit

class CustomButton: UIButton {
    
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
    
    
    func ConfigurarPropiedades(){
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 15
        self.layer.backgroundColor = UIColor.red.cgColor
        self.frame.size = CGSize(width: 220, height: 50)
        self.titleLabel?.font = UIFont(name: "Arial", size: 16.0)
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.textColor = UIColor.white
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowRadius = 5.0
        self.layer.shadowOpacity = 0.4
    }
    
    
}
