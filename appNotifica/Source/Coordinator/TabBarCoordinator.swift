//
//  TabBarCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 04/12/23.
//

import Foundation
import UIKit

class  TabBarCoordinator: Coordinator{
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = TabBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        
        
        let homeNavigation = UINavigationController()
        let homeViewCoodinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoodinator.start()
                
        let sobreNavigation = UINavigationController()
        let sobreViewCoodinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoodinator.start()
        
        let navigationControllers = [homeNavigation, sobreNavigation]
        
        tabBarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabBarController, animated: true)
    }
    
}




