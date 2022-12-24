//
//  LoginViewController.swift
//  Final Project
//
//  Created by Linda Loay on 10/12/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //var isClient = true
    // var isCompany = true
     
    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var userTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var optionLabel: UILabel!
    
    @IBOutlet weak var gmailImage: UIImageView!
    
    
    @IBOutlet weak var facebookImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

   //     configureButtons()
    }
    @IBAction func backBtn(_ sender: UIButton) {
    }
    
    @IBAction func forgetPasswordBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func loginBtn(_
        sender: UIButton) {
    }
    
    @IBAction func signInBtn(_
        sender: UIButton) {
//        if isClient{
//            self.performSegue(withIdentifier: "client", sender: sender)
//            return
//        }else{
//            self.performSegue(withIdentifier: "company", sender: sender)
//        }
        
        
        
    }
    
}
