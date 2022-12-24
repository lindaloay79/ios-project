//
//  SignInViewController.swift
//  Final Project
//
//  Created by Linda Loay on 16/12/2022.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var phoneNum: UITextField!
    
    @IBOutlet weak var stateKeyLabel: UILabel!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    @IBOutlet weak var registrationRequirement: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
    }
    
    @IBAction func swichChange(_ sender: UISwitch) {
        print("status = \(sender.isOn)")
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
    
}
