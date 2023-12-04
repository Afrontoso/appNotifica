//
//  TabbarController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 29/11/23.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackgroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroudColor
    }
}
