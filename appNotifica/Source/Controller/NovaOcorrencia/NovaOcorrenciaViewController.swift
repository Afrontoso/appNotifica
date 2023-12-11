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
    
    let viewModel: NovaOcorrenciaViewModel
    
    init(viewModel: NovaOcorrenciaViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView(viewModel: viewModel)
        
        novaOcorrenciaView.onCameraTap = {
            EscolhaImagem().selecionadorImagem(self){imagem in novaOcorrenciaView.setImage(image: imagem)
            }
        }
        
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
