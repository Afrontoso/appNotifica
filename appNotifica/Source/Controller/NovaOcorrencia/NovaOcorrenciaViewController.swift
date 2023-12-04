//
//  NovaOcorrenciaViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 04/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefaut {
    
    //MARK: - Clouseres
    var onNomeTap: (() -> Void)?
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        
        return novaOcorrenciaView
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrencia"
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
