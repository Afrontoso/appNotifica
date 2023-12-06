//
//  SobreViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 24/11/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefaut {
    
    //MARK: - Clouseres
    var onNomeTap: (() -> Void)?
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        
        return sobreView
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
}
