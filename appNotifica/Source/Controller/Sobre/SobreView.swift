//  SobreView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 24/11/23.
//

import Foundation
import UIKit

class SobreView: ViewDefault {
    
    //MARK: - Closures
    
    //MARK: - Proports
    
    //MARK: - Inits
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupVisualElements()
        self.backgroundColor = .viewBackgroudColor
    }
    
    required init? (coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
    override func setupVisualElements(){
        
    }
}


