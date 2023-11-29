//
//  LoginCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.onRegisterTap = {
            self.goToRegisterTap()
        }
        viewController.onLoginTap = {
            self.goToLoginTap()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        
    }
    
    private func goToRegisterTap() {
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func goToLoginTap() {
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
