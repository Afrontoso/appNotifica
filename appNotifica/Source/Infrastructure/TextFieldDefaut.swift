//
//  TextLabel.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 17/11/23.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    
    init(text: String) {
        super.init(frame: .zero)
              
        initTextFieldDefault(text: text, keyBordType: .default, returnKeyType: .default)
            
    }

    init(text: String, keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType ) {
        super.init(frame: .zero)
              
        initTextFieldDefault(text: text, keyBordType: keyBordType, returnKeyType: returnKeyType)
            
    }
    
    
    
    private func initTextFieldDefault (text: String,keyBordType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        self.backgroundColor = .textFieldColor
        
//      muda a cor do playceholder
        self.attributedPlaceholder = NSAttributedString(
            string: text,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        self.layer.cornerRadius = 12
        self.borderStyle = .roundedRect
        self.keyboardType = keyBordType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented ")
    }
}
