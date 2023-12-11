//
//  HomeViewModel.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 11/12/23.
//

import Foundation
import UIKit

class HomeViewModel {
    
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
    }
}

