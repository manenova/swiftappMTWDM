//
//  Modelo.swift
//  07-AppLogin
//
//  Created by Emmanuel Noriega Vaca on 22/10/21.
//

import Foundation

//MARK: Declaración Global
var lista : [EntidadUsuario] = []


class EntidadUsuario {
    
    init(usuario:String, password:String){
        self.usuario = usuario
        self.password = password
    }
    
    var usuario:String = ""
    var password:String = ""
}

