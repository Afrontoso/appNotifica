//
//  SobreCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 04/12/23.
//

import Foundation
import UIKit

class  SobreCoordinator: Coordinator{
    
    private let navigationController: UINavigationController
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.navigationController.setViewControllers([sobreViewController], animated: false)
    }
}
