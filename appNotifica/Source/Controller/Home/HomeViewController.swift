//
//  HomeViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 22/11/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefaut {
    //MARK: - Clouseres
    
    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // cria uma variável que é do
    lazy var homeView: HomeView = {
        let homeView = HomeView(viewModel: viewModel)
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    @objc
    func handleAdd(){
        viewModel.didTapAdd()
    }
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))
    }
}
