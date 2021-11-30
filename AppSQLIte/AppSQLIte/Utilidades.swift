//
//  Utilidades.swift
//  AppSQLIte
//
//  Created by Emmanuel Noriega Vaca on 12/11/21.
//

import Foundation
import UIKit

public enum tipoMsj {
    case Alert, Sheet
}

class Utilidades {
    
    var controlador : UIViewController?
    
    init (_controlador: UIViewController) {
        controlador = _controlador
    }
    
    func Mensaje (titulo : String, mensaje : String, tipo: tipoMsj)  {
        let estiloAlerta = (tipo.hashValue == tipoMsj.Alert.hashValue) ?
            UIAlertController.Style.alert:
            UIAlertController.Style.actionSheet
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: estiloAlerta)
        
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        
        if tipo.hashValue == tipoMsj.Sheet.hashValue {
            alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil) )
            
        }
        
        controlador?.present(alerta, animated: true, completion: nil)
        
    }
}
