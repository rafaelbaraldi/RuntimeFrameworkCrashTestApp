
import UIKit
import DynamicFrameworkSample

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!

    @IBAction func updateButtonClick(_ sender: Any) {
        messageLabel.text = DynamicFrameworkClass.getDefaultText()
    }
}
