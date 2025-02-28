
import UIKit

class TemperatureConverterViewController: UIViewController {

    @IBOutlet weak var txtCelcius: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Temperature converter"
    }

    @IBAction func calculate(_ sender: Any) {
        let celcius = Double(txtCelcius.text ?? "0.0") ?? 0.0
        lblResult.text = "la temperatura es: \(converter(celcius: celcius))"
        
        let result = (converter(celcius: celcius))
        
        if result <= 32 {
            imgResult.image = UIImage(named: "nieve")
        } else if (result > 32 && result <= 86) {
            imgResult.image = UIImage(named: "playa")
        } else {
            imgResult.image = UIImage(named: "solecito")
        }
    }
    
    func converter(celcius: Double) -> Double {
        return ((celcius * 9.0) / 5.0) + 32.0
    }
    
    @IBAction func reset(_ sender: Any) {
        lblResult.text = "La temperatura es: "
        imgResult.image = UIImage(named: "normal")
        txtCelcius.text = ""
    }
}
