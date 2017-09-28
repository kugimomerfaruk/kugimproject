//
//  ViewController.swift
//  KugimOmerFaruk
//
//  Created by ST6 on 28.09.2017.
//  Copyright © 2017 kugim. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var names : String = ""
    var namesArray = [String] ()
    
    @IBOutlet weak var nameEnterTextBox: UITextField!
    @IBOutlet weak var nameList: UILabel!
    @IBOutlet weak var alertForCharacterControl: UILabel!
    
    @IBAction func addNameButton() {
        
        if (nameEnterTextBox.text?.characters.count)! >= 5 {
            names = nameEnterTextBox.text!
            namesArray.append(names)
            print(namesArray)
            names = ""
            
            for i in namesArray {
                print(i)
                names += "\n" + i
            }
            nameEnterTextBox.text = ""
            
            nameList.text = names
            
        } else {
            alertForCharacterControl.isHidden = false
        }
    }
    
    
    @IBAction func clearButton() {
        
        if namesArray.count != 0 {
            
            namesArray.removeLast()
            print(namesArray)
            names = ""
            
            for i in namesArray {
                
                print(i)
                names += "\n" + i
                
            }
            nameList.text = names
            
        } else {
            alertForCharacterControl.isHidden = false
            alertForCharacterControl.text = "Silinecek bir veri bulunamadı"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alertForCharacterControl.isHidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

