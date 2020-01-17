//
//  Sign in.swift
//  SqlDatabase
//
//  Created by Yogesh Patel on 08/01/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit

class Sign_in: UIViewController {
    
    var dbObj = DBmanage()
       var value = [Any]()
    
    @IBOutlet weak var email: UITextField!
    
    @IBAction func btnlogin(_ sender: Any) {
        
        if (email.text != "" && password.text != "") {
                 let queryTxt = "SELECT * from Yogesh where Email = \"\(email.text!)\" AND Password = \"\(password.text!)\""
                 //let testQuery = "SELECT * from User where username = \"Test\" AND password = \"test1\""
                 
            let id = dbObj.RunQuery(query: queryTxt)
          
            
                 //print(id.count)
                 
                 if (id.count == 0){
                     let alert = UIAlertController.init(title: "Error", message: "Details not found, please try again or register a new user!", preferredStyle: .alert)
                     let continueAction = UIAlertAction.init(title: "Continue", style: .default, handler: { (alert) in
                         self.dismiss(animated: true, completion: nil)
                     })
                     alert.addAction(continueAction)
                     self.present(alert, animated: true, completion: nil)
                     return
                 }
                 
                 for key in id[0].keys {
                     //print(id[key]!)
                     self.value.append(id[0][key]!)
                     //self.value.append(id[key]!)
                 }
                 //print(type(of: value[3]))
                 //print(value)
            
            print("Done")
              //   performSegue(withIdentifier: "PassData", sender: sender)
                 /*
                  let city = value[0] as! String
                  let email = value[1] as! String
                  let password = value[2] as! String
                  let image = value[3] as! NSData
                  let gender = value[4] as! String
                  let userid = value[5] as! String
                  let username = value[6] as! String
                  
                  value = [Any]()
                  */
                 //this is working now, finish the login
                 
                 //print(id.keys[id.keys.startIndex])
                 //print(txtFldUsername.text!)
                 //print(txtFldPassword.text!)
             }
             else{
                 print("\n\n\t\tError!")
                 let alert = UIAlertController.init(title: "Error", message: "Please enter username and password!", preferredStyle: .alert)
                 let continueAction = UIAlertAction.init(title: "Continue", style: .default, handler: { (alert) in
                     self.dismiss(animated: true, completion: nil)
                 })
                 alert.addAction(continueAction)
                 self.present(alert, animated: true, completion: nil)
             }
        
             
    }
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var btnlogin1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        email.layer.borderWidth = 1
                     email.layer.borderColor = UIColor.black.cgColor
                     email.layer.cornerRadius = 16
                     email.clipsToBounds = true
              password.layer.borderWidth = 1
                     password.layer.borderColor = UIColor.black.cgColor
                     password.layer.cornerRadius = 16
                     password.clipsToBounds = true
              btnlogin1.layer.cornerRadius = 16
                     btnlogin1.tintColor = UIColor.black
                                 
                           self.btnlogin1.layer.shadowRadius = 5
                           self.btnlogin1.layer.shadowOpacity = 100
                           self.btnlogin1.layer.shadowOffset = CGSize(width: 3, height: 3)
                           self.btnlogin1.layer.borderColor = UIColor.black.cgColor
                           self.btnlogin1.layer.borderWidth = 1
              
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
