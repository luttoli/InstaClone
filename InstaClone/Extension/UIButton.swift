//
//  UIButton.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UIButton {
    func customTextButton(text: String, font: UIFont, titleColor: UIColor, backgroundColor: UIColor) {
        self.setTitleColor(titleColor, for: .normal)
//        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitle(text, for: .normal)
        self.titleLabel?.font = font
        self.backgroundColor = backgroundColor
        self.layer.borderColor = UIColor.clear.cgColor
        //나중에 필요하면 넣기
        self.layer.borderWidth = 0
        self.layer.cornerRadius = 0
    }
}
