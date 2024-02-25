//
//  UIButton.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UIButton {
    func customButton(text: String, font: UIFont, titleColor: UIColor, backgroundColor: UIColor) {
        self.setTitleColor(titleColor, for: .normal)
        self.setTitle(text, for: .normal)
        self.titleLabel?.font = font
        self.backgroundColor = backgroundColor
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 0
        self.layer.cornerRadius = Constants.coustomCornerRadius * 2
    }
}
