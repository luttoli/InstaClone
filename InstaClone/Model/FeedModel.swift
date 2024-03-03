//
//  FeedModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/2/24.
//

import Foundation
import UIKit

struct Feed {
    let id: UUID = UUID()
    let nickName: String
    let profileImage: UIImage?
    let location: String?
    let feedImage: [UIImage]
    let likeStatus: Bool
    let likedBy: [LikedBy]
    let likeCount: Int
    let content: String
    let comment: [String?]
    
    init(nickName: String, profileImage: UIImage?, location: String?, feedImage: [UIImage], likeStatus: Bool, likedBy: [LikedBy] , likeCount: Int, content: String, comment: [String?]) {
        self.nickName = nickName
        self.profileImage = profileImage
        self.location = location
        self.feedImage = feedImage
        self.likeStatus = likeStatus
        self.likedBy = likedBy
        self.likeCount = likeCount
        self.content = content
        self.comment = comment
    }
}
