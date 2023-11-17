//
//  TextLabel.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 17/11/23.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    init(text: String){
        super.init(frame: .zero)
        initTextFieldDefault(text: text)
    }
    private func initTextFieldDefault (text: String){
        self.backgroundColor = .textFieldColor
        
//      muda a cor do playceholder
        self.attributedPlaceholder = NSAttributedString(
            string: text,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        self.layer.cornerRadius = 12
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
    
}
