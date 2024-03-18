//
//  ProfileViewModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import Foundation

class ProfileViewModel {
    var feed: Feed
    
    init(feed: Feed) {
        self.feed = feed
    }
    
    var profileDetailData: Feed?
}
