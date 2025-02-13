//
//  SumViewController.swift
//  mobiles2
//
//  Created by ITIT on 11/02/25.
//

import UIKit

class SumViewController: UIViewController {
    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func sum(_ sender: Any) {
        
        let number1: Int = Int(txtNumber1.text!) ?? 0
        let number2: Int = Int(txtNumber2.text!) ?? 0
        let sum: Int = number1 + number2
        
        if let number1 = txtNumber1.text, !number1.isEmpty,
        let number2 = txtNumber2.text, !number2.isEmpty {
            let alert = UIAlertController(title: "La suma es", message: "\(sum)", preferredStyle: .alert)
            let action = UIAlertAction(title: "Cerrar",
                                       style: UIAlertAction.Style.default) { _ in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Uno o varios campos estan vacios", preferredStyle: .alert)
            let action = UIAlertAction(title: "Cerrar",
                                       style: UIAlertAction.Style.default) { _ in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
     
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("Why are you shaking me?")
        }
    }
}
