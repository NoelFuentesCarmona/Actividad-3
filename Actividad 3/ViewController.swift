//
//  ViewController.swift
//  Actividad 3
//
//  Created by usuario on 1/11/19.
//  Copyright © 2019 gs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMontoapagar: UITextField!
    @IBOutlet weak var txtPropina: UITextField!
    @IBOutlet weak var lbPropina: UILabel!
    @IBOutlet weak var lbMontoapagar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCalcularPropina(_ sender: UIButton) {
        
        var porcientopropina = Double(txtPropina.text!);
        var montoapagar = Double(txtMontoapagar.text!);
        if porcientopropina != nil && montoapagar != nil {
            if Int(porcientopropina!)  > 0 && Int(montoapagar!) > 0
            {
            var totalpropina =  (( porcientopropina! * montoapagar! ) / 100)
            lbPropina.text = String(totalpropina)
            
            lbMontoapagar.text = String(totalpropina + montoapagar!)
            }
        }
        
        
    }
    

}

