//
//  ViewController.swift
//  08-AppAlertas
//
//  Created by Emmanuel Noriega Vaca on 29/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblinformacion: UIView!
    
    @IBOutlet weak var lblinfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onAlerta1(_ sender: Any) {
        //MARK: Crear una alerta
        let alerta = UIAlertController(title: "Alerta", message: "Este es un mensaje", preferredStyle: .alert)
        //MARK: Acciones
        alerta.addAction(UIAlertAction(title: "aceptar", style: .default, handler: {
            (UIAlertAction) in print("Se le ha dado clic en aceptar")
        }))
        
        present(alerta, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func onAlerta2(_ sender: Any) {
        
        //MARK: Crear una alerta
        let alerta = UIAlertController(title: "Alerta 2", message: "Este es un mensaje", preferredStyle: .alert)
        //MARK: Acciones
        
        alerta.addAction(UIAlertAction(title: "aceptar", style: .default, handler: {
            (UIAlertAction) in self.lblinfo.text = "Se le ha dado clic en aceptar"
        }))
        
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: {
            (UIAlertAction) in self.lblinfo.text = "Se le ha dado clic en cancelar"
        }))
        present(alerta, animated: true, completion: nil)
        

    }
    
    @IBAction func onAlerta3(_ sender: Any) {
        
        //MARK: Crear una alerta
        let alerta = UIAlertController(title: "Alerta 3", message: "Este es un mensaje", preferredStyle: .alert)
        //MARK: Acciones
        
        alerta.addTextField{
            (UITextField) in
                UITextField.placeholder = "Escribe"
                UITextField.textColor = UIColor.blue
        }
        
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {(UIAlertAction) in
            self.lblinfo.text = "Aceptar -  \(alerta.textFields![0].text!)"
            
        }))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func onAlerta4(_ sender: Any) {
        
        //MARK: Crear una alerta
        let alerta = UIAlertController(title: "Actiom Sheet", message: "Selecciona un item", preferredStyle: .actionSheet)
        //MARK: Acciones
        
        alerta.addAction(UIAlertAction(title: "Opción 1", style: .default, handler: {(UIAlertAction) in
            self.lblinfo.text = "Se le ha dado clic en opcion 1"
            
        }))
        
        alerta.addAction(UIAlertAction(title: "Opción 2", style: .default, handler: {(UIAlertAction) in
            self.lblinfo.text = "Se le ha dado clic en opcion 2"
            
        }))
        
        alerta.addAction(UIAlertAction(title: "Opción 3", style: .destructive, handler: {(UIAlertAction) in
            self.lblinfo.text = "Se le ha dado clic en opcion 3"
            
        }))
        
        
        let presentationPopover = alerta.popoverPresentationController
        if presentationPopover  != nil {
            presentationPopover?.barButtonItem = sender as? UIBarButtonItem
            presentationPopover?.sourceView = self.view
            presentationPopover?.permittedArrowDirections = .up
            
        }
        
        self.present(alerta, animated: true, completion: nil)
      
    }
    
    
}

