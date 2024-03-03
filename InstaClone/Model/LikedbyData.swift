//
//  LikedbyData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import Foundation

struct LikedbyData {
    static var likedList: [LikedBy] = [likedby1, likedby2, likedby3, likedby4, likedby5]
}

let likedby1: LikedBy = LikedBy(likedImage: nil, likedName: "Just now")

let likedby2: LikedBy = LikedBy(likedImage: nil, likedName: "Faker")

let likedby3: LikedBy = LikedBy(likedImage: nil, likedName: "Son")

let likedby4: LikedBy = LikedBy(likedImage: nil, likedName: "IU")

let likedby5: LikedBy = LikedBy(likedImage: nil, likedName: "Infinite Challenge")
