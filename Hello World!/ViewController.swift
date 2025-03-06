//
//  ViewController.swift
//  Hello World!
//
//  Created by user272075 on 3/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBAction func showOutput(_ sender: Any) {
        let name = txtName.text
        let output = "Hello " + name!
        lblOutput.text = output
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                 action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

