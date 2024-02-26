//
//  UITextField.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UITextField {
    func customIdTextField(placeholder: String, font: UIFont, textColor: UIColor, alignment: NSTextAlignment, keyboardType: UIKeyboardType) {
        self.placeholder = placeholder
        self.font = font
        self.textColor = textColor
        self.textAlignment = alignment
        self.heightAnchor.constraint(equalToConstant: font.lineHeight + Constants.coustomHorizontalMargin * 2).isActive = true
        //좌측여백
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftViewMode = .always
        self.layer.cornerRadius = Constants.coustomCornerRadius
        self.backgroundColor = .coustomTextFieldColor
        self.keyboardType = keyboardType
    }
    
    func customPasswordTextField(placeholder: String, font: UIFont, textColor: UIColor, alignment: NSTextAlignment, keyboardType: UIKeyboardType) {
        self.placeholder = placeholder
        self.font = font
        self.textColor = textColor
        self.textAlignment = alignment
        self.heightAnchor.constraint(equalToConstant: font.lineHeight + Constants.coustomHorizontalMargin * 2).isActive = true
        //좌측여백
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftViewMode = .always
        self.layer.cornerRadius = Constants.coustomCornerRadius
        self.backgroundColor = .coustomTextFieldColor
        self.keyboardType = keyboardType
    }
}
