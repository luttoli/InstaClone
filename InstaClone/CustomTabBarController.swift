//
//  CustomTabBarController.swift
//  InstaClone
//
//  Created by 김지훈 on 2/24/24.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeViewController = HomeViewController()
        let homeTabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Home.png"), tag: 0)
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        homeNavigationController.tabBarItem = homeTabBarItem
        
        let searchViewController = SearchViewController()
        let searchTabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Search.png"), tag: 1)
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        searchNavigationController.tabBarItem = searchTabBarItem

        let newViewController = NewViewController()
        let newTabBarItem = UITabBarItem(title: nil, image: UIImage(named: "New.png"), tag: 2)
        let newNavigationController = UINavigationController(rootViewController: newViewController)
        newNavigationController.tabBarItem = newTabBarItem
        
        let alarmViewController = AlarmViewController()
        let alarmTabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Heart.png"), tag: 3)
        let alarmNavigationController = UINavigationController(rootViewController: alarmViewController)
        alarmNavigationController.tabBarItem = alarmTabBarItem
        
        let myViewController = MyViewController()
        let myTabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Profile.png"), tag: 4)
        let myNavigationController = UINavigationController(rootViewController: myViewController)
        myNavigationController.tabBarItem = myTabBarItem
        
        self.viewControllers = [homeNavigationController, searchNavigationController, newNavigationController, alarmNavigationController, myNavigationController]
        
        self.tabBar.barTintColor = .coustomBackgroundColor
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.tintColor = .black
        
        self.selectedIndex = 0
    }
}
