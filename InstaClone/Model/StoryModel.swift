//
//  StoryModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/2/24.
//

import Foundation
import UIKit

struct Story {
    let id: UUID = UUID()
    let nickName: String
    let storyImage: UIImage?
    let liveStatus: Bool
}
