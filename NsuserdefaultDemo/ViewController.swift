//
//  ViewController.swift
//  NsuserdefaultDemo
//
//  Created by Jony Singla on 26/12/16.
//  Copyright © 2016 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var viewButtonTap: UIButton!
    @IBOutlet weak var saveButtonTap: UIButton!
    @IBOutlet weak var txtField: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    @IBAction func saveButton(_ sender: Any) {
        
        
        defaults.set(txtField.text, forKey: "firstName")
    }

    @IBAction func viewButton(_ sender: Any) {
        
        
        lblData.text = defaults.object(forKey: "firstName") as! String
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

