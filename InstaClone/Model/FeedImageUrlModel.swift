//
//  FeedImageUrlModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/4/24.
//

import Foundation

struct FeedImageUrlModel: Codable {
    let id: String?
    let url: String?
    let width, height: Int?
}
