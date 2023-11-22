//
//  LoginView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    //MARK: - Clouseres
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = UIColor(named: "viewBackgroundColor")
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder){
        fatalError("inint(coder:) has not been implemented")
    }
    
    //cria a função com as propriedades da imagem no login
    var loginImage = ImageDefault(image: "ImageLogin")
    
    //cria a função com as propriedades da label no login
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    
    //cria a função com as propriedades da campo de texto de login no login
    var  emailTextField = TextFieldDefault(text: "E-mail")
    
    //cria a função com as propriedades da campo de texto de senha no login
    var  senhaTextField = TextFieldDefault(text: "Senha")
    
    //cria a função com as propriedades do botão de logar no login
    var  logarButton = ButtonDefault(title: "LOGAR")
    
    //cria a função com as propriedades do botão de regitrar no login
    var  registrarButton = ButtonDefault(title: "REGISTRAR")
    
    func setupVisualElements() {
        
        self.addSubview(loginImage)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(logarButton)
        self.addSubview(registrarButton)
        
        registrarButton.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        logarButton.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            loginImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            loginImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginImage.widthAnchor.constraint(equalToConstant: 274.99),
            loginImage.heightAnchor.constraint(equalToConstant: 82.64),
            
            imageLabel.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            
            logarButton.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            logarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            logarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            logarButton.heightAnchor.constraint(equalToConstant: 60),
            
            registrarButton.topAnchor.constraint(equalTo: logarButton.bottomAnchor, constant: 25),
            registrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            registrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            registrarButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    //MARK: - Action
    @objc private func registerTap(){
        onRegisterTap?()
    }
    
    @objc private func loginTap() {
        onLoginTap?()
    }
}
