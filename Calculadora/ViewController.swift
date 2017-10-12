//
//  ViewController.swift
//  Calculadora
//
//  Created by Aplimovil on 5/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var num1:UITextField!
    @IBOutlet var num2:UITextField!
    @IBOutlet var result:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sum(_ sender:UIButton){
        let (n1,n2) = getOperators()
        result.text = "\(n1 + n2)"
    }
    
    @IBAction func sub(_ sender:UIButton){
        let (n1,n2) = getOperators()
        result.text = "\(n1 - n2)"
    }

    @IBAction func mul(_ sender:UIButton){
        let (n1,n2) = getOperators()
        result.text = "\(n1 * n2)"
    }
    
    @IBAction func div(_ sender:UIButton){
        let (n1,n2) = getOperators()
        result.text = "\(n1 / n2)"
    }
    
    func getOperators()->(n1:Int, n2:Int){
        let nString1 = num1.text!
        let nString2 = num2.text!
        return (n1: Int(nString1)!, n2: Int(nString2)!)
    }
    
    
    

}

