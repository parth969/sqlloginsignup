//
//  Sign up.swift
//  SqlDatabase
//
//  Created by Yogesh Patel on 08/01/20.
//  Copyright © 2020 yogesh patel. All rights reserved.
//

import UIKit

class Sign_up: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource,UINavigationControllerDelegate,  UIImagePickerControllerDelegate{
    var arr = [    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas (the)",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia (Plurinational State of)",
    "Bonaire, Sint Eustatius and Saba",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "British Indian Ocean Territory (the)",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cayman Islands (the)",
    "Central African Republic (the)",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos (Keeling) Islands (the)",
    "Colombia",
    "Comoros (the)",
    "Congo (the Democratic Republic of the)",
    "Congo (the)",
    "Cook Islands (the)",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Curaçao",
    "Cyprus",
    "Czechia",
    "Côte d'Ivoire",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic (the)",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Falkland Islands (the) [Malvinas]",
    "Faroe Islands (the)",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "French Southern Territories (the)",
    "Gabon",
    "Gambia (the)",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Heard Island and McDonald Islands",
    "Holy See (the)",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran (Islamic Republic of)",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea (the Democratic People's Republic of)",
    "Korea (the Republic of)",
    "Kuwait",
    "Kyrgyzstan",
    "Lao People's Democratic Republic (the)",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands (the)",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia (Federated States of)",
    "Moldova (the Republic of)",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands (the)",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger (the)",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "Northern Mariana Islands (the)",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine, State of",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines (the)",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Republic of North Macedonia",
    "Romania",
    "Russian Federation (the)",
    "Rwanda",
    "Réunion",
    "Saint Barthélemy",
    "Saint Helena, Ascension and Tristan da Cunha",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Martin (French part)",
    "Saint Pierre and Miquelon",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Sint Maarten (Dutch part)",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Georgia and the South Sandwich Islands",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan (the)",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan (Province of China)",
    "Tajikistan",
    "Tanzania, United Republic of",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands (the)",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates (the)",
    "United Kingdom of Great Britain and Northern Ireland (the)",
    "United States Minor Outlying Islands (the)",
    "United States of America (the)",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela (Bolivarian Republic of)",
    "Viet Nam",
    "Virgin Islands (British)",
    "Virgin Islands (U.S.)",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Zambia",
    "Zimbabwe",
    "Åland Islands"]
    
    
    var city = ""
    var db = DBmanage()
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        city = arr[row]
    }
    
    
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func segaction(_ sender: Any) {
        }
    var arrGender = ["Male","Female","Other"]
    @IBOutlet weak var img: UIImageView!
    
  
    
    @IBOutlet weak var savebtn: UIButton!
    
    
    @IBAction func svaebtn(_ sender: Any) {
        let Gender = arrGender[segoutlet.selectedSegmentIndex]
               
               let UserImage = img.image!.jpegData(compressionQuality: 1.0)
               
               
               let command = "INSERT INTO Yogesh(Name,Email,Password,City,Gender,Image) VALUES('\(name.text!)','\(email.text!)','\(password.text!)','\(city)','\(Gender)','\(UserImage!)')"
        
//        let command = "INSERT INTO Tbl(Name) VALUES('\(name.text!)')"
        
               if db.RunCommand(cmd: command)
               {
                   print("Data Saved!")
                   
                   let alert = UIAlertController(title: "Sign Up", message: "Your data in saved Succefully", preferredStyle: .alert)
                   
                   let okAction = UIAlertAction(title: "OK", style: .default)
                   alert.addAction(okAction)
                   self.present(alert, animated: true, completion: nil)
               }
               else{
                   print("Not Saved!")
               }
    }
    
    @IBOutlet weak var btncancel: UIButton!
    
    @IBOutlet var tapGest: UITapGestureRecognizer!
    
    @IBAction func tapgesture(_ sender: UITapGestureRecognizer) {
        
        imgPicker = UIImagePickerController()
        imgPicker.sourceType = .photoLibrary
            
            
        imgPicker.delegate = self
        
            //self.navigationController?.pushViewController(imgPicker, animated: true)
        self.present(imgPicker, animated: true, completion: nil)
        
    }
    @IBOutlet weak var pickr: UIPickerView!
    @IBOutlet weak var segoutlet: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
                name.layer.borderWidth = 1
                name.layer.borderColor = UIColor.black.cgColor
                name.layer.cornerRadius = 16
                name.clipsToBounds = true
                
                email.layer.borderWidth = 1
                email.layer.borderColor = UIColor.black.cgColor
                email.layer.cornerRadius = 16
                email.clipsToBounds = true
                
        password.layer.borderWidth = 1
        password.layer.borderColor = UIColor.black.cgColor
        password.layer.cornerRadius = 16
        password.clipsToBounds = true
              
                
                savebtn.layer.cornerRadius = 15
                savebtn.tintColor = UIColor.black
                                   
                             self.savebtn.layer.shadowRadius = 5
                             self.savebtn.layer.shadowOpacity = 100
                             self.savebtn.layer.shadowOffset = CGSize(width: 3, height: 3)
                             self.savebtn.layer.borderColor = UIColor.black.cgColor
                             self.savebtn.layer.borderWidth = 1
               
                                   btncancel.layer.cornerRadius = 15
                                         btncancel.tintColor = UIColor.black
                                                            
                                                      self.btncancel.layer.shadowRadius = 5
                                                      self.btncancel.layer.shadowOpacity = 100
                                                      self.btncancel.layer.shadowOffset = CGSize(width: 3, height: 3)
                                                      self.btncancel.layer.borderColor = UIColor.black.cgColor
                                                      self.btncancel.layer.borderWidth = 1
                                         
                            
              
                segoutlet.layer.cornerRadius = 16
                       
                       segoutlet.tintColor = UIColor.white
                      // seg1.setValue(UIColor.white, forKeyPath: "textColor")
        //        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        //        seg1.setTitleTextAttributes(titleTextAttributes, for: .selected)
                
                       self.segoutlet.layer.borderWidth = 1
                       self.segoutlet.layer.borderColor = UIColor.white.cgColor
               pickr.setValue(UIColor.black, forKeyPath: "textColor")
                
//        self.name.delegate = (self as! UITextFieldDelegate)
//        self.email.delegate = (self as! UITextFieldDelegate)
//        self.password.delegate = (self as! UITextFieldDelegate)
       
        
        // Do any additional setup after loading the view.
    }
    var imgPicker = UIImagePickerController()
    
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        let PickedImage = info[.originalImage] as! UIImage
        
            img.contentMode = .scaleAspectFill
            img.image = PickedImage
        
        dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        //self.navigationController?.popViewController(animated: true)//.pop(animated: true, completion: nil)
        self.dismiss(animated: true, completion: nil)
    }
//    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return false
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
