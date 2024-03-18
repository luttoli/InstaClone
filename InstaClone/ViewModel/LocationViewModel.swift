//
//  LocationViewModel.swift
//  InstaClone
//
//  Created by 김지훈 on 3/18/24.
//

import Foundation

class LocationViewModel {
    var feed: Feed
    
    init(feed: Feed) {
        self.feed = feed
    }
    
    var locationDetailData: Feed?
}
