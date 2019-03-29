//
//  ConsumoViewController.swift
//  SegundoExamen
//
//  Created by Robert JF on 3/28/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class ConsumoViewController: UIViewController {

    @IBOutlet weak var txtConsumo: UITextField!
    var consumo : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Consumo de agua"
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func btnVaso(_ sender: Any) {
        txtConsumo.text = "\(Double(txtConsumo.text!)! + 0.300)"
    }
    
    @IBAction func btn600L(_ sender: Any) {
        txtConsumo.text = "\(Double(txtConsumo.text!)! + 0.600)"
    }
    
    @IBAction func btn1Litro(_ sender: Any) {
        txtConsumo.text = "\(Double(txtConsumo.text!)! + 1.0)"
    }
    @IBAction func btnLitroYMedio(_ sender: Any) {
        txtConsumo.text = "\(Double(txtConsumo.text!)! + 1.5)"
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            consumo = 0
            txtConsumo.text = "0"
        }
    }
}
