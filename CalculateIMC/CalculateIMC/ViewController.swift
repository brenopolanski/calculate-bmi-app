//
//  ViewController.swift
//  CalculateIMC
//
//  Created by user140218 on 5/26/18.
//  Copyright © 2018 user140218. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var valorImc: Float = 0.0
    var nomeCompleto: NSString = ""
    var idade: Float = 0.0
    
    @IBOutlet weak var textFieldNomeCompleto: UITextField!
    @IBOutlet weak var textFieldAltura: UITextField!
    @IBOutlet weak var textFieldPeso: UITextField!
    @IBOutlet weak var textFieldIdade: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculaImc(_ sender: Any) {
        guard let sNomeCompleto = self.textFieldNomeCompleto.text,
        self.textFieldNomeCompleto.text?.isEmpty==false else {
            exibirAlerta()
            return
        }

        guard let sAltura = self.textFieldAltura.text,
        self.textFieldAltura.text?.isEmpty==false else {
            exibirAlerta()
            return
        }
    }
    
    @IBAction func limparCampos(_ sender: Any) {
        textFieldNomeCompleto.text = nil
        textFieldAltura.text = nil
        textFieldPeso.text = nil
        textFieldIdade.text = nil
    }
    
    func exibirAlerta() {
        let alerta = UIAlertController(title: "Alerta", message: "Preencha todos os campos", preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        
        alerta.addAction(action)
        
        present(alerta, animated: true, completion: nil)
    }
}
