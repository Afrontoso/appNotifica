//
//  RegisterView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 20/11/23.
//

import Foundation
import UIKit

class RegisterView: UIView {
    
    var onLoginTap: (() -> Void)?
    
    override init(frame: CGRect){
        super.init(frame: .zero)
        self.backgroundColor = UIColor(named: "viewBackgroundColor")
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder){
        fatalError("inint(coder:) has not been implemented")
    }
    
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar.", fontName: "", fontSize: 28)
    
    var  emailTextField = TextFieldDefault(text: "E-mail")
    var  senhaTextField = TextFieldDefault(text: "Senha")
    var  cSenhaTextField = TextFieldDefault(text: "Confirmar Senha")
    var  registrarButton = ButtonDefault(title: "REGISTRAR")
    var  logarButton = ButtonDefault(title: "LOGAR")
    
    
    func setupVisualElements() {
        
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(cSenhaTextField)
        self.addSubview(registrarButton)
        self.addSubview(logarButton)
        
        logarButton.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            cSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            cSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            cSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            cSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            cSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            registrarButton.widthAnchor.constraint(equalToConstant: 374),
            registrarButton.heightAnchor.constraint(equalToConstant: 60),
            registrarButton.topAnchor.constraint(equalTo: cSenhaTextField.bottomAnchor, constant: 25),
            registrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            registrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            logarButton.widthAnchor.constraint(equalToConstant: 374),
            logarButton.heightAnchor.constraint(equalToConstant: 60),
            logarButton.topAnchor.constraint(equalTo: registrarButton.bottomAnchor, constant: 25),
            logarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            logarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    @objc private func loginTap(){
        onLoginTap?()
    }
    
}
