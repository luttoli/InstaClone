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
    var feedImage: [String?]
    let likeStatus: Bool
    let likedBy: [LikedByModel]
    let likeCount: Int
    let content: String
    let comment: [CommentModel]
}
