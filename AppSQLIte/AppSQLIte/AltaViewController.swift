//
//  AltaViewController.swift
//  AppSQLIte
//
//  Created by Emmanuel Noriega Vaca on 12/11/21.
//

import UIKit

class AltaViewController: UIViewController {

    @IBOutlet weak var Validador: UIView!
    @IBOutlet weak var txtNombre: CustomTextField!
    @IBOutlet weak var txtDomicilio: CustomTextField!
    @IBOutlet weak var txtRFC: CustomTextField!
    @IBOutlet weak var txtRepresentanteLe: UITextField!
    
    @IBAction func onCancelar(_ sender: Any) {
    }
    @IBAction func onGuardar(_ sender: Any) {
    }
    
    @IBAction func onCapturaInformacion(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
