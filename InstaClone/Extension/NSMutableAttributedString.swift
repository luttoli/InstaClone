//
//  NSMutableAttributedString.swift
//  InstaClone
//
//  Created by 김지훈 on 3/4/24.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    func bold(string: String, fontName: String, fontSize: CGFloat) -> NSMutableAttributedString {
        guard let customFont = UIFont(name: fontName, size: fontSize) else {
            fatalError("Custom font '\(fontName)' not found")
        }
        
        let attributes: [NSAttributedString.Key: Any] = [.font: customFont]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }

    func regular(string: String, fontName: String, fontSize: CGFloat) -> NSMutableAttributedString {
        guard let customFont = UIFont(name: fontName, size: fontSize) else {
            fatalError("Custom font '\(fontName)' not found")
        }
        
        let attributes: [NSAttributedString.Key: Any] = [.font: customFont]
        self.append(NSAttributedString(string: string, attributes: attributes))
        return self
    }
}
