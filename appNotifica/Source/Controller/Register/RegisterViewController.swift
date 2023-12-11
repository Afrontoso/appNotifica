//
//  RegisterViewControler.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefaut {
    
    //MARK: - Clouseres
    var onLoginTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        registerView.onLoginTap = {
            self.onLoginTap?()
        }
        return registerView
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
