//
//  ViewController.swift
//  uikit study
//
//  Created by Arthur Sh on 14.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textFieldLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func press(_ sender: Any) {
        self.textFieldLabel.text = " "
        self.alert(title: "Success", message: "message sent.", typeOfAler: .alert)
    }
    
    
    
    func alert(title: String, message: String, typeOfAler: UIAlertController.Style) {
        //MARK: - create alert
        let alertController = UIAlertController(title: "Success!", message: "Message sent.", preferredStyle: .alert)
        
        //MARK: - create action buttons for alert
        let action = UIAlertAction(title: "Ok.", style: .default){ action in
            
            let textField = alertController.textFields?.first?.text
            self.textFieldLabel.text! += textField!
            print(textField!)
        }
        
        //MARK: - add button + textField to alert
        alertController.addTextField { text in
            
        }
        alertController.addAction(action)
        
        //MARK: - call alert "show it!"
        self.present(alertController, animated: true)
    }
}

