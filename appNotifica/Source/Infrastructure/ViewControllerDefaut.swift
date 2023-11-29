//
//  ViewControllerDefaut.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-12 on 22/11/23.
//

import Foundation
import UIKit

class ViewControllerDefaut: ViewController {
    
    //é executado quando está carregando
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title se modifica, deixando ele grande e mais visivel
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hiderKeyboardByTappingoutSide))
            self.view.addGestureRecognizer(tap)
    }
    
    @objc
    func hiderKeyboardByTappingoutSide(){
        self.view.endEditing(true)
    }
    
}
