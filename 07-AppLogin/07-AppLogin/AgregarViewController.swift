//
//  AgregarViewController.swift
//  07-AppLogin
//
//  Created by Emmanuel Noriega Vaca on 22/10/21.
//

import UIKit

class AgregarViewController: UIViewController {

    @IBOutlet weak var txtusuario: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBAction func OnAgregar(_ sender: Any) {
        
        
        if (txtusuario.text! == "" || txtpassword.text! == ""){
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Registro", message: "Existen campos vacios, validar", preferredStyle: .alert)
            //MARK: Acciones
                    
            alerta.addAction(UIAlertAction(title: "aceptar", style: .default, handler: {
                    (UIAlertAction) in print ("Se le ha dado clic en aceptar")
            }))

            present(alerta, animated: true, completion: nil)
                    
        }else{
            var entidad = EntidadUsuario(usuario: txtusuario.text!, password: txtpassword.text!)
            lista.append(entidad)
            

            
            let alert = UIAlertController(title: "Nuevo Usuario", message: "Usuario Registrado correctamente.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            txtusuario.text = ""
            txtpassword.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtpassword.isSecureTextEntry = true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
