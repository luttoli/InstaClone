//
//  UIStackView.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UIStackView {
    func customStackView(axis: NSLayoutConstraint.Axis, spacing: CGFloat, alignment: UIStackView.Alignment) {
        self.axis = axis
        self.spacing = spacing
        self.alignment = alignment
    }
}
