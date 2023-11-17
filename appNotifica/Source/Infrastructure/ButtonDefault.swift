//
//  ButtonDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 17/11/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton{
    init(title: String){
        super.init(frame: .zero)
        initButtonDefault(title: title)
    }
    private func initButtonDefault (title: String){
        self.backgroundColor = .buttonBackgroundColor
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
    
}
