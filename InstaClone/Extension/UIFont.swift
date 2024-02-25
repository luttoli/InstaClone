//
//  UIFont.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import Foundation
import UIKit

extension UIFont {
    static func spoqaHanSansNeo(size fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        let fontName = "SpoqaHanSansNeo"

        var weightString: String
        switch weight {
        case .bold:
            weightString = "Bold"
        case .medium:
            weightString = "Medium"
        case .regular:
            weightString = "Regular"
        default:
            weightString = "Medium"
        }

        return UIFont(name: "\(fontName)-\(weightString)", size: fontSize) ?? .systemFont(ofSize: fontSize, weight: weight)
    }
}
