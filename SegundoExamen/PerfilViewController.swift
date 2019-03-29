//
//  PerfilViewController.swift
//  SegundoExamen
//
//  Created by Robert JF on 3/28/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit
import RNNotificationView

class PerfilViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtEstatura: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Perfil"
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    @IBAction func btnGuardar(_ sender: Any) {
        // Creating instance
        let notification = RNNotificationView()
        // Customizations
        notification.titleFont = UIFont(name: "AvenirNext-Bold", size: 10)!
        notification.titleTextColor = UIColor.blue
        notification.iconSize = CGSize(width: 46, height: 46) // Optional setup
        notification.show(withImage: nil,
                          title: "Exito",
                          message: "Usuario guardado exitosamente",
                          onTap: {
                            print("Did tap notification")
        })
        
        self.navigationController!.popToRootViewController(animated: true)
        
    }
    
}

