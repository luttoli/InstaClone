//
//  LikedBy.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import Foundation
import UIKit

//좋아요한사람
struct LikedBy {
    let id: UUID = UUID()
    let likedImage: UIImage?
    let likedName: String
    
    init(likedImage: UIImage?, likedName: String) {
        self.likedImage = likedImage
        self.likedName = likedName
    }
}

