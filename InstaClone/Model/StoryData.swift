//
//  StoryData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/2/24.
//

import Foundation
import UIKit

struct StoryData {
    static var storyList: [Story] = [myStory] + friendStoryList
    
    static var friendStoryList: [Story] = [friend1Stroy, friend2Stroy, friend3Stroy, friend4Stroy, friend5Stroy]
}

let myStory: Story = Story(nickName: "luttoli", storyImage: nil, liveStatus: false)

let friend1Stroy: Story = Story(nickName: "friend1", storyImage: nil, liveStatus: true)
let friend2Stroy: Story = Story(nickName: "friend2", storyImage: nil, liveStatus: false)
let friend3Stroy: Story = Story(nickName: "friend3", storyImage: nil, liveStatus: true)
let friend4Stroy: Story = Story(nickName: "friend4", storyImage: nil, liveStatus: false)
let friend5Stroy: Story = Story(nickName: "friend5", storyImage: nil, liveStatus: true)

