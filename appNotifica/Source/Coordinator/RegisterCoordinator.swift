//
//  RegisterCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 20/11/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
//        viewController.onLoginTap = {
//            self.goToLoginTap()
//        }
        viewController.onLoginTap = goToLoginTap
//        navigationController.pushViewController(viewController, animated: true)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func goToLoginTap() {
//        let _viewController = LoginViewController()
//        self.navigationController.popViewController(animated: true)
        navigationController.popViewController(animated: true)
    }
    
}
