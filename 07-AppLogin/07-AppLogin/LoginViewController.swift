//
//  LoginViewController.swift
//  07-AppLogin
//
//  Created by Emmanuel Noriega Vaca on 22/10/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var plist = UserDefaults.standard
    
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func OnLoginUIAlert(_ sender: Any) {
        
        //MARK: Crear una alerta
        let alerta = UIAlertController(title: "Login UIAlert", message: "Ingresar Credenciales", preferredStyle: .alert)
               //MARK: Acciones
               
               alerta.addTextField{
                   (UITextField) in
                       UITextField.placeholder = "Usuarip"
                       UITextField.textColor = UIColor.blue
               }
               
        alerta.addTextField{
            (UITextField) in
                UITextField.placeholder = "Contraseña"
                UITextField.textColor = UIColor.blue
                UITextField.isSecureTextEntry = true
        }
        
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {(UIAlertAction) in
            let usuario = alerta.textFields![0].text!
            let password = alerta.textFields![1].text!
            
            for item in lista{
                if usuario == item.usuario && password == item.password {
                    self.plist.set(usuario, forKey: "Usuario")
                    self.appDelegate.OnLoginSuccess()
                }
            }
            
        }))
               
        present(alerta, animated: true, completion: nil)
        
        
    }
  
    
    
    @IBAction func OnLogin(_ sender: Any) {
        let usuario = txtUsuario.text
        let password = txtPassword.text
        
        if (usuario == "" || password == ""){
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Login Incorrecto", message: "Existen campos vacios, validar", preferredStyle: .alert)
                    //MARK: Acciones
                    
                    alerta.addAction(UIAlertAction(title: "aceptar", style: .default, handler: {
                        (UIAlertAction) in print ("Se le ha dado clic en aceptar")
                    }))
          
                    present(alerta, animated: true, completion: nil)
                    
        }else{
            for item in lista{
                if usuario == item.usuario && password == item.password {
                    plist.set(usuario, forKey: "Usuario")
                    appDelegate.OnLoginSuccess()
                }
            }
            
            
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Login Incorrecto", message: "Usuario o Contraaseña incorrecta", preferredStyle: .alert)
            //MARK: Acciones
                    
            alerta.addAction(UIAlertAction(title: "aceptar", style: .default, handler: {
                (UIAlertAction) in print ("Se le ha dado clic en aceptar")
            }))
          
            present(alerta, animated: true, completion: nil)
            
        }
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtPassword.isSecureTextEntry = true
        // Do any additional setup after loading the view.
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
