//
//  LoginViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var onRegisterTap: (() -> Void)?

    lazy var loginView: LoginView = {
        let view = LoginView()
//        view.onRegistarTap = self.onRegistarTap
        view.onRegisterTap = {
            self.onRegisterTap?()
        }
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
