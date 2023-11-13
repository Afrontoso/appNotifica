//
//  LoginViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    let loginView = LoginView()
    
    override func loadView() {
//        super.loadView()
//        view.backgroundColor = .yellow
        self.view = loginView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
