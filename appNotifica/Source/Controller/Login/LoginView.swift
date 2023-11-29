//
//  LoginView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginView: ViewDefault {
    
    //MARK: - Clouseres
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    //MARK: - Inits

    
    //MARK: - Propeties
    //cria a função com as propriedades da imagem no login
    var loginImage = ImageDefault(image: "ImageLogin")
    
    //cria a função com as propriedades da label no login
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    
    //cria a função com as propriedades da campo de texto de login no login
    var  emailTextField = TextFieldDefault(text: "E-mail", keyBordType: .emailAddress, returnKeyType: .next)
    
    //cria a função com as propriedades da campo de texto de senha no login
    var  senhaTextField : TextFieldDefault = {
        let text = TextFieldDefault(text: "Senha", keyBordType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true;
        
        return text
    }()
    
    //cria a função com as propriedades do botão de logar no login
    var  logarButton = ButtonDefault(title: "LOGAR")
    
    //cria a função com as propriedades do botão de regitrar no login
    var  registrarButton = ButtonDefault(title: "REGISTRAR")
    
    
    override func setupVisualElements() {
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
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

extension LoginView: UITextFieldDelegate {
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        if textField == emailTextField {
            
            self.senhaTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
