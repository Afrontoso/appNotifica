//
//  LabelDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 17/11/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    init(text: String){
        super.init(frame: .zero)
        initLabelDefault(text: text)
    }
    private func initLabelDefault (text: String){
        self.text = text
        self.textColor = .labelColor
        self.textAlignment = .center
        self.font  = UIFont(name: "SFProDisplay-Light", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
    
}
