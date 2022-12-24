//
//  PriceViewController.swift
//  Final Project
//
//  Created by Linda Loay on 24/12/2022.
//

import UIKit

class PriceViewController: UIViewController {

    @IBOutlet weak var region: UITextField!
    
    @IBOutlet weak var cityy: UITextField!
    @IBOutlet weak var pinImage: UIImageView!
    
    @IBOutlet weak var buildingArea: UITextField!
    
    @IBOutlet weak var windowsNum: UITextField!
    
    @IBOutlet weak var floorsNum: UITextField!
    
    @IBOutlet weak var ceilingHeight: UITextField!
    
    @IBOutlet weak var theCost: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func modelSelection(_ sender: UIButton) {
    }
    
    @IBAction func companySelection(_ sender: UIButton) {
    }
    
    @IBAction func locationOnTheMap(_ sender: UIButton) {
    }
    
    @IBAction func chartImage(_ sender: UIButton) {
    }
    
    @IBAction func sendRrquest(_ sender: UIButton) {
    }
    
}
