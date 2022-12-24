//
//  SignInCompanyViewController.swift
//  Final Project
//
//  Created by Linda Loay on 23/12/2022.
//

import UIKit

class SignInCompanyViewController: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var userNamee: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBOutlet weak var stateKeyy: UILabel!
    
    @IBOutlet weak var phoneNumberr: UITextField!
    
    @IBOutlet weak var timeWork: UITextField!
    
    @IBOutlet weak var city: UITextField!
    
    @IBOutlet weak var locationImage: UIImageView!
    
    
    @IBOutlet weak var shortDescription: UITextField!
    
    @IBOutlet weak var passwordd: UITextField!
    
    @IBOutlet weak var comfirmPassword: UITextField!
    
    @IBOutlet weak var accepts: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn(_ sender: UIButton) {
    }
    
    @IBAction func location(_ sender: UIButton) {
    }
    
    @IBAction func switchBtn(_ sender: UISwitch) {
    }
    @IBAction func loginBtn(_ sender: UIButton) {
    }
}
