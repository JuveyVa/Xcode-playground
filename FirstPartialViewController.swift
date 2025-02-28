//
//  FirstPartialViewController.swift
//  mobiles2
//
//  Created by ITIT on 25/02/25.
//

import UIKit

class FirstPartialViewController: UIViewController {
    
    
    @IBOutlet weak var heightInMeters: UITextField!
    @IBOutlet weak var weightInKg: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "IMC Calculator"
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func IMC () -> String {
        let height = Double(heightInMeters.text ?? "0.0") ?? 0.0
        let weight = Double(weightInKg.text ?? "0.0") ?? 0.0
        var patientStatus = ""
        let imc = weight / (height * height)
        
        if (imc > 19 && imc < 24.9){
             patientStatus = "The patient is at a healthy weight."
        } else {
             patientStatus = "The patient is NOT at a healthy weight."
        }
        
        return patientStatus
    }

    @IBAction func calculate(_ sender: Any){
        let alert = UIAlertController(title: "The IMC is", message: "\(IMC())", preferredStyle: .alert)
        let action = UIAlertAction(title: "Close",
                                   style: UIAlertAction.Style.default) { _ in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) { if motion == .motionShake {
        heightInMeters.text = ""
        weightInKg.text = ""
        }
    }
}
