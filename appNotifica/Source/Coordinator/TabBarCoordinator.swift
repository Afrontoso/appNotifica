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
        
        let homeViewCoodinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoodinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoodinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabBarController.setViewControllers([homeViewCoodinator.homeViewController, novaOcorrenciaViewCoodinator.novaOcorrenciaViewController, sobreViewCoodinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController (tabBarController, animated: true)
    }
    
}




