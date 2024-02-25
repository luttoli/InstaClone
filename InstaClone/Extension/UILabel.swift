//
//  UILabel.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UILabel {
    func customLabel(font: UIFont, textColor: UIColor, alignment: NSTextAlignment) {
        self.font = font
        self.sizeToFit()
        self.textAlignment = alignment
        self.textColor = textColor
    }
}
