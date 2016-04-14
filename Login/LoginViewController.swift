//
//  LoginViewController.swift
//  Login
//
//  Created by student on 15/4/16.
//  Copyright © 2016 ISS-MWAD. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userId.delegate = self;
        password.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        userId.resignFirstResponder()
        password.resignFirstResponder()
        return true;
    }
    
    @IBAction func login(sender: AnyObject){
        userId.resignFirstResponder()
        password.resignFirstResponder()
        
        let login:LoginModel = LoginModel()
        let result:Bool = login.verifyUserandPassword(userId.text!, password: password.text!)
        if(!result){
            printMessage("Incorrect Username or Password")
        }else{
            printMessage("Welcome to the application")
        }
    }
    
    func printMessage(name:String) {
        let alertPopUp:UIAlertController = UIAlertController(title: "Alert", message: name, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel){action -> Void in}
        alertPopUp.addAction(cancelAction)
        self.presentViewController(alertPopUp, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
