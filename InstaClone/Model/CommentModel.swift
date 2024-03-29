//
//  CommentModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/26/24.
//

import Foundation
import UIKit

struct CommentModel {
    let id: UUID = UUID()
    let image: UIImage?
    let name: String
    let comments: String
}

struct CommentData {
    static var commentList1: [CommentModel] = [comment1, comment2, comment3, comment4, comment5]
    static var commentList2: [CommentModel] = [comment6, comment7, comment8, comment9, comment10]
    static var commentList3: [CommentModel] = [comment11, comment12, comment13, comment14, comment15]
    static var commentList4: [CommentModel] = [comment16, comment17, comment18, comment19, comment20]
    static var commentList5: [CommentModel] = [comment21, comment22, comment23, comment24, comment25]
}

let comment1: CommentModel = CommentModel(image: nil, name: "iOS1", comments: "배고파...")
let comment2: CommentModel = CommentModel(image: nil, name: "iOS2", comments: "좋아요")
let comment3: CommentModel = CommentModel(image: nil, name: "iOS3", comments: "@))))))")
let comment4: CommentModel = CommentModel(image: nil, name: "iOS4", comments: "@----")
let comment5: CommentModel = CommentModel(image: nil, name: "iOS5", comments: "저두요")

let comment6: CommentModel = CommentModel(image: nil, name: "iOS6", comments: "배고파...")
let comment7: CommentModel = CommentModel(image: nil, name: "iOS7", comments: "좋아요")
let comment8: CommentModel = CommentModel(image: nil, name: "iOS8", comments: "저두요")
let comment9: CommentModel = CommentModel(image: nil, name: "iOS9", comments: "저두요")
let comment10: CommentModel = CommentModel(image: nil, name: "iOS10", comments: "저두요")

let comment11: CommentModel = CommentModel(image: nil, name: "iOS11", comments: "배고파...")
let comment12: CommentModel = CommentModel(image: nil, name: "iOS12", comments: "좋아요")
let comment13: CommentModel = CommentModel(image: nil, name: "iOS13", comments: "저두요")
let comment14: CommentModel = CommentModel(image: nil, name: "iOS14", comments: "저두요")
let comment15: CommentModel = CommentModel(image: nil, name: "iOS15", comments: "저두요")

let comment16: CommentModel = CommentModel(image: nil, name: "iOS16", comments: "배고파...")
let comment17: CommentModel = CommentModel(image: nil, name: "iOS17", comments: "좋아요")
let comment18: CommentModel = CommentModel(image: nil, name: "iOS18", comments: "저두요")
let comment19: CommentModel = CommentModel(image: nil, name: "iOS19", comments: "저두요")
let comment20: CommentModel = CommentModel(image: nil, name: "iOS20", comments: "저두요")

let comment21: CommentModel = CommentModel(image: nil, name: "iOS21", comments: "배고파...")
let comment22: CommentModel = CommentModel(image: nil, name: "iOS22", comments: "좋아요")
let comment23: CommentModel = CommentModel(image: nil, name: "iOS23", comments: "저두요")
let comment24: CommentModel = CommentModel(image: nil, name: "iOS24", comments: "저두요")
let comment25: CommentModel = CommentModel(image: nil, name: "iOS25", comments: "저두요")
