//
//  ViewController.swift
//  IMC-iOS
//
//  Created by Igor Damasceno on 08/09/22.
//

import UIKit

class ViewController: UIViewController {

    var idade = 19
    var peso = 79
    
    @IBOutlet weak var menBtn: UIButton!
    @IBOutlet weak var womenBtn: UIButton!
    @IBOutlet weak var alturaLbl: UITextField!
    @IBOutlet weak var bgAltura: UIView!
    @IBOutlet weak var pesoLbl: UITextField!
    @IBOutlet weak var idadeLbl: UITextField!
    @IBOutlet weak var bgPeso: UIView!
    @IBOutlet weak var calcularBnt: UIButton!
    @IBOutlet weak var bgIdade: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        radiusDetails()
    }

    func radiusDetails(){
        menBtn.layer.cornerRadius = 25
        womenBtn.layer.cornerRadius = 25
        bgAltura.layer.cornerRadius = 25
        bgPeso.layer.cornerRadius = 25
        bgIdade.layer.cornerRadius = 25
        calcularBnt.layer.cornerRadius = 35
    }
    
    
    @IBAction func tipPeople(_ sender: UIButton) {
        menBtn.isSelected = false
        menBtn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        womenBtn.isSelected = false
        womenBtn.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        sender.isSelected = true
        sender.backgroundColor = #colorLiteral(red: 0, green: 0.4963310957, blue: 1, alpha: 1)
    }
    @IBAction func removePesoBtn(_ sender: Any) {
        peso -= 1
        pesoLbl.text = String(peso)
    }
    @IBAction func addPesoBtn(_ sender: Any) {
        peso += 1
        pesoLbl.text = String(peso)
    }
    
    @IBAction func addIdadeBtn(_ sender: Any) {
        idade += 1
        idadeLbl.text = String(idade)
    }
    @IBAction func removeIdadeBnt(_ sender: Any) {
        idade -= 1
        idadeLbl.text = String(idade)
    }
    
    @IBAction func alturaSlider(_ sender: UISlider) {
        alturaLbl.text = String(format: "%.2f", sender.value)
        
    }
    
}

