//
//  ViewController.swift
//  finalApp
//
//  Created by Justin Kim on 3/2/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var segueButton: UIButton!
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if emailTextField.text != ""{
            if passwordTextField.text != ""{
                if passwordTextField.text == "ImCool123"{
                    UserDefaults.standard.set(emailTextField.text, forKey: Constants.UserDefaults.username)
                    UserDefaults.standard.set("Content", forKey: "viewcontroller")
                    UserDefaults.standard.synchronize()
                    emailTextField.text = ""
                    passwordTextField.text = ""
                    return true
                }else {
                    return false
                }
            } else{
                return false
            }
        }else{
            return false
        }
    }
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue) { }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


