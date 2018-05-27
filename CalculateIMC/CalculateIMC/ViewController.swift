//
//  ViewController.swift
//  CalculateIMC
//
//  Created by user140218 on 5/26/18.
//  Copyright © 2018 user140218. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var valorImc : Float = 0.0
    var nomeCompleto = ""
    var idade : Float = 0.0
    
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
        
        guard let sPeso = self.textFieldPeso.text,
            self.textFieldPeso.text?.isEmpty==false else {
                exibirAlerta()
                return
        }
        
        guard let sIdade = self.textFieldIdade.text,
            self.textFieldIdade.text?.isEmpty==false else {
                exibirAlerta()
                return
        }
        
        let alturaFloat = (sAltura as NSString).floatValue
        let pesoFloat = (sPeso as NSString).floatValue
        let idadeFloat = (sIdade as NSString).floatValue
        
        valorImc = (pesoFloat / (alturaFloat * alturaFloat))
        nomeCompleto = sNomeCompleto
        idade = idadeFloat
        
        self.performSegue(withIdentifier: "segueTelaResultados", sender: nil)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueTelaResultados") {
            let telaResultados = segue.destination as? TelaResultadosViewController
            
            telaResultados?.valorImc = self.valorImc
            telaResultados?.nomeCompleto = self.nomeCompleto
            telaResultados?.idade = self.idade
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
