//
//  LikedbyData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import Foundation
import UIKit

struct LikedbyData {
    static var likedList: [LikedByModel] = [likedby1, likedby2, likedby3, likedby4, likedby5]
}

let likedby1: LikedByModel = LikedByModel(likedImage: UIImage(named: "liker.png"), likedName: "Just now")

let likedby2: LikedByModel = LikedByModel(likedImage: UIImage(named: "liker.png"), likedName: "Faker")

let likedby3: LikedByModel = LikedByModel(likedImage: UIImage(named: "liker.png"), likedName: "Son")

let likedby4: LikedByModel = LikedByModel(likedImage: UIImage(named: "liker.png"), likedName: "IU")

let likedby5: LikedByModel = LikedByModel(likedImage: UIImage(named: "liker.png"), likedName: "Infinite Challenge")
