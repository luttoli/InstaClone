//
//  FeedData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import Foundation
import UIKit

struct FeedData {
    static var feedList: [Feed] = [fridend6Feed, fridend7Feed, fridend8Feed, fridend9Feed, fridend10Feed]
}

let fridend6Feed: Feed = Feed(nickName: "fridend6", profileImage: nil, location: "Seoul, Korea", feedImage: [], likeStatus: false, likedBy: [LikedbyData.likedList[0]], likeCount: 99999, content: "We first met at Gwanghwamun. I was eating steak, but it came out late.", comment: [])

let fridend7Feed: Feed = Feed(nickName: "fridend7", profileImage: nil, location: "Jeju, Korea", feedImage: [], likeStatus: false, likedBy: [LikedbyData.likedList[1]], likeCount: 9999, content: "I went to Jeju Island to live for a month.", comment: [])

let fridend8Feed: Feed = Feed(nickName: "fridend8", profileImage: nil, location: "Merlion Park, Singapore", feedImage: [], likeStatus: false, likedBy: [LikedbyData.likedList[2]], likeCount: 999, content: "We went to Singapore for our first overseas trip together. I found out later that it was a national holiday.", comment: [])

let fridend9Feed: Feed = Feed(nickName: "fridend9", profileImage: nil, location: "Beverly Hills, Los Angeles", feedImage: [], likeStatus: false, likedBy: [LikedbyData.likedList[3]], likeCount: 999999, content: "I bought my first luxury item in a wealthy neighborhood in LA where I went on my honeymoon.", comment: [])

let fridend10Feed: Feed = Feed(nickName: "fridend10", profileImage: nil, location: "Cancun, Mexico", feedImage: [], likeStatus: false, likedBy: [LikedbyData.likedList[4]], likeCount: 9999999, content: "All-inclusive stay in Cancun is unforgettable. I want to eat non-alcoholic fida cola again.", comment: [])

