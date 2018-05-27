//
//  TelaResultadosViewController.swift
//  CalculateIMC
//
//  Created by user140218 on 5/26/18.
//  Copyright © 2018 user140218. All rights reserved.
//

import UIKit

class TelaResultadosViewController: UIViewController {
    
    var valorImc : Float?
    var nomeCompleto: String?
    var idade : Float?

    @IBOutlet weak var labelNomeCompleto: UILabel!
    @IBOutlet weak var labelValorIdade: UILabel!
    @IBOutlet weak var labelResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sValorImg = NSString(format: "%.2f", valorImc!)
        let sIdade = NSString(format: "%.0f", idade!)
        
        self.labelNomeCompleto.text = "Olá \(nomeCompleto!)"
        self.labelValorIdade.text = "\(sIdade) anos"
        self.labelResultado.text = "\(sValorImg)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func voltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
