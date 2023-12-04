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
    
    // cria uma variável que é do
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        //muda a o "Home" de lugar, agora esta na ViewControllerDefaut
        //self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
