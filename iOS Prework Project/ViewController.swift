//
//  ViewController.swift
//  iOS Prework Project
//
//  Created by Nikhil Agrawal on 29/08/18.
//  Copyright © 2018 Nikhil Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var userLabel: UILabel!
    var backGroundColor : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backGroundColor = view.backgroundColor;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnChangeText(_ sender: Any) {
        if(userTextField.text == ""){
            userLabel.text = "GoodBye!!";
        }else{
            userLabel.text = userTextField.text;
        }
        userTextField.text = "";
        view.endEditing(true);
    }
    
    @IBAction func btnChangeViewColor(_ sender: Any) {
        view.backgroundColor = UIColor.cyan;
    }
    
    @IBAction func btnChangeTextColor(_ sender: Any) {
        
        userLabel.textColor = UIColor.blue;
        
    }
    
    @IBAction func onTap(_ sender: Any) {
         view.backgroundColor = backGroundColor;
        userLabel.text = "Hello from Nikhil!"
        userTextField.text = "";
        userLabel.textColor = UIColor.black;
    }
}

