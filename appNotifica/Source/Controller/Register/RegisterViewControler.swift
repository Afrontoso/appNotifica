//
//  RegisterViewControler.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    var onLoginTap: (() -> Void)?
//    let registerView = RegisterView()
    
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
//        registerView.onLoginTap = {
//            self.onLoginTap?()
//        }
        registerView.onLoginTap = self.onLoginTap
        return registerView
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
