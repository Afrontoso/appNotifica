//
//  NovaOcorrenciaView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 04/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault {
    //MARK: - Inits

    //MARK: - Closures
    
    //MARK: - Proports
    lazy var imagem: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imagemCamera")
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tituloTextField = TextFieldDefault(text: "Titulo ", keyBordType: .default, returnKeyType: .next)
    lazy var descricaoTextField = TextFieldDefault(text: "Descrição ", keyBordType: .default, returnKeyType: .next)
    lazy var localizaTextField = TextFieldDefault(text: "Localizacão ", keyBordType: .default, returnKeyType: .next)
    lazy var statusTextField = TextFieldDefault(text: "Status ", keyBordType: .default, returnKeyType: .done)
    lazy var saveButton = ButtonDefault(title: "Salvar")
    
    override func setupVisualElements(){
        self.addSubview(imagem)
        self.addSubview(tituloTextField)
        self.addSubview(descricaoTextField)
        self.addSubview(localizaTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)


        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),

            tituloTextField.widthAnchor.constraint(equalToConstant: 374),
            tituloTextField.heightAnchor.constraint(equalToConstant: 60),
            tituloTextField.topAnchor.constraint(equalTo:imagem.bottomAnchor, constant: 20),
            tituloTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            tituloTextField.trailingAnchor.constraint(equalTo:self.trailingAnchor,constant:  -15),


            descricaoTextField.widthAnchor.constraint(equalToConstant: 374),
            descricaoTextField.heightAnchor.constraint(equalToConstant: 60),
            descricaoTextField.topAnchor.constraint(equalTo: tituloTextField.bottomAnchor, constant: 5),
            descricaoTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descricaoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),

            localizaTextField.widthAnchor.constraint(equalToConstant: 374),
            localizaTextField.heightAnchor.constraint(equalToConstant: 60),
            localizaTextField.topAnchor.constraint(equalTo: descricaoTextField.bottomAnchor, constant: 5),
            localizaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),

            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: localizaTextField.bottomAnchor, constant: 5),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),


            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),

            ])
    }
}
