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
        initLabelDefault(text: text, fontName: "SFProDisplay-Light", fontSize: 17)
    }
    
    init(text: String, fontName: String, fontSize: CGFloat) {
        super.init(frame: .zero)
        initLabelDefault(text: text, fontName: fontName, fontSize: fontSize)
    }
    
    
    private func initLabelDefault (text: String, fontName: String, fontSize: CGFloat){
        self.text = text
        self.textColor = .labelColor
        
        if let font = UIFont(name: fontName, size: fontSize) {
            self.font = font
        } else {
            self.font = UIFont.systemFont(ofSize: fontSize)
        }
        
        //quebra de linha
        self.numberOfLines = 0
        
        self.textAlignment = .center
        //self.font  = UIFont(name: "SFProDisplay-Light", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
    
}
