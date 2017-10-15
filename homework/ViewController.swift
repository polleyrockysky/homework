//
//  ViewController.swift
//  homework
//
//  Created by USER on 10/15/17.
//  Copyright © 2017 Polly. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //ทำการประกาศตัวแปร นี่คือ ตัวแปรที่เราจะเอาไว้รับค่าจากการกรอกผ่าน textfield
    
    var userString: String = ""
    var passwordString: String = ""
    
    //กำหนดค่าคงที่ let
    let userDictionary = ["User1":"U1234", "User2":"U2345", "User3":"AA234", "User4":"JJ888"]
    let alertDictionary = ["UserFalse":"ไม่มี User นี้ในฐานข้อมูลของ เฮา", "passFalse":"Please Try Agains Password False", "authenOK":"Welcome to My App"]
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    

    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get value from textfield
        userString = userTextField.text!
        passwordString = passwordTextField.text!
    
        //display ค่าที่รับมาจาก textfield บน console
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
        
        let resultString = userDictionary[userString]
    // print("result = \(String(describing: resultString))")
        print("result = \(String(describing: resultString))")
        
        
        
        
        
        
        //Check User
    
        if (resultString == nil) {
            //User Faile
            alertLabel.text = alertDictionary["UserFalse"]
            
            
            
        }
        if (passwordString == resultString) {
            //password True
            alertLabel.text = alertDictionary["authenOK"]
        
        } else {
        
            //password False
            alertLabel.text = alertDictionary["passFalse"]
        
        }
            
        
        
        
        
        
        
    }  //นี่คือ login button
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

