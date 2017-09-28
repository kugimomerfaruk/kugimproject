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
    var namesArray : Array<String> = [] // Hocaya sor !
    
    
    @IBOutlet weak var nameEnterTextBox: UITextField!
    @IBOutlet weak var nameList: UILabel!
    @IBOutlet weak var alertForCharacterControl: UILabel!
    
    @IBAction func addNameButton() {
        
        
            
            if (nameEnterTextBox.text?.characters.count)! >= 5 {
                names = nameEnterTextBox.text!
                
                namesArray.append(names)
                print(namesArray)
                
            } else {
                alertForCharacterControl.isHidden = false
            }
  
    }
    
   
    @IBAction func clearButton() {
        
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

