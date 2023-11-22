//
//  HomeView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 22/11/23.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupVisualElements()
        self.backgroundColor = .viewBackgroudColor
    }
    
    required init? (coder: NSCoder) {
        fatalError("Init(coder: ) has not been implemented")
    }
    func setupVisualElements(){
        
    }
}
