//
//  ViewController.swift
//  Swift_Alert_and_ActionSheet
//
//  Created by Macbook on 28/05/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func alertBtnPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "My Alert", message: "You get an alert", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Enter your name"
        }
        
        let cancelButton = UIAlertAction(title: "Cancel Button", style: .cancel) { (action) in
            print("Cancel")
            print(alert.textFields?.first?.text)
        }
        let defaultButton = UIAlertAction(title: "Default Button", style: .default) { (action) in
            print("Default")
        }
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
            print("Destructive")
        }
        alert.addAction(destructiveButton)
        alert.addAction(defaultButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
    }
    @IBAction func asBtnPressed(_ sender: UIButton) {
        let alertSheet = UIAlertController(title: "My ActionSheet", message: "You are in my alert", preferredStyle:.actionSheet )
        
        let cancelButton = UIAlertAction(title: "Cancel Button", style: .cancel) { (action) in
            print("Cancel")
            
        }
        let defaultButton = UIAlertAction(title: "Default Button", style: .default) { (action) in
            print("Default")
        }
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { (action) in
            print("Destructive")
        }
        alertSheet.addAction(destructiveButton)
        alertSheet.addAction(defaultButton)
        alertSheet.addAction(cancelButton)
        present(alertSheet, animated: true, completion: nil)
    }
    

}

