//
//  SecondViewController.swift
//  To Do List
//
//  Created by CAMILO ALEJANDRO ALFONSO SANCHEZ on 10/18/17.
//  Copyright © 2017 CAMILO ALEJANDRO ALFONSO SANCHEZ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
    
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(textField.text!)
        }
        else{
            items = [textField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

