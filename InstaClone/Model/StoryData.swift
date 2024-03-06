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

let myStory: Story = Story(nickName: "luttoli", storyImage: UIImage(systemName: "face.smiling.inverse"), liveStatus: false)

let friend1Stroy: Story = Story(nickName: "karennne", storyImage: UIImage(named: "karennne.png"), liveStatus: true)
let friend2Stroy: Story = Story(nickName: "zackjohn", storyImage: UIImage(named: "zackjohn.png"), liveStatus: false)
let friend3Stroy: Story = Story(nickName: "kieron_d", storyImage: UIImage(named: "kierond.png"), liveStatus: true)
let friend4Stroy: Story = Story(nickName: "craig_love", storyImage: UIImage(named: "craig.png"), liveStatus: false)
let friend5Stroy: Story = Story(nickName: "om.pangjin", storyImage: UIImage(named: "ompangjin.png"), liveStatus: true)
