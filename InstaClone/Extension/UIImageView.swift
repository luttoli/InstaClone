//
//  UIImageView.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UIImageView {
    func customImageView(contentMode: ContentMode, clipsToBounds: Bool, tintColor: UIColor, cornerRadius: CGFloat ) {
        self.contentMode = contentMode
        self.clipsToBounds = clipsToBounds
        self.tintColor = tintColor
        self.layer.cornerRadius = cornerRadius
    }
}
