//
//  LoginView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 13/11/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect){
        super.init(frame: .zero)
        self.backgroundColor = .white
        
        setupVisualElements()
    }
    required init?(coder: NSCoder){
        fatalError("inint(coder:) has not been implemented")
    }
    
    func setupVisualElements() {
        let loginImage: UIImageView = {
            let image = UIImageView()
            image.image = UIImage(named: "ImageLogin")
            image.contentMode = .scaleAspectFit // aumenta o x e y da imagem juntos
            image.translatesAutoresizingMaskIntoConstraints = false
            
            return image
        }()
        
        let imageLabel: UILabel = {
            let label = UILabel()
            label.text = "Registre e gerencie as ocorrências do seu IF"
            label.textColor = .labelColor
            label.textAlignment = .center
            label.font  = UIFont(name: "SFProDisplay-Light", size: 17)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
        let emailTextField: UITextField = {
            let textField = UITextField()
            textField.backgroundColor = .white
            textField.placeholder = "E-mail"
            textField.layer.cornerRadius = 12
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
        
        let senhaTextField: UITextField = {
            let senhaTextField = UITextField()
            senhaTextField.backgroundColor = .white
            senhaTextField.placeholder = "Senha"
            senhaTextField.layer.cornerRadius = 12
            senhaTextField.translatesAutoresizingMaskIntoConstraints = false
            
            return senhaTextField
        }()
        
        let logarButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .buttonBackgroundColor
            button.setTitle("LOGAR", for: .normal)
            button.layer.cornerRadius = 12
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
        
        let registrarButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .buttonBackgroundColor
            button.setTitle("REGISTRAR", for: .normal)
            button.layer.cornerRadius = 12
            button.translatesAutoresizingMaskIntoConstraints = false
        
            return button
        }()
        
        self.addSubview(loginImage)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(logarButton)
        self.addSubview(registrarButton)
        
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
}
