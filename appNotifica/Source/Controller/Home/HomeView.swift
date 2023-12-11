//
//  HomeView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 22/11/23.
//

import Foundation
import UIKit

class HomeView: ViewDefault {
    
    //MARK: - Inits
    
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init? (coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
    
    override func setupVisualElements(){
        super.setupVisualElements()
    }
}
