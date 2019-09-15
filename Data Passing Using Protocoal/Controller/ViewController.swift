//
//  ViewController.swift
//  Data Passing Using Protocoal
//
//  Created by AKASH on 31/07/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, sendBackData {
    
    func sendBack(dataSend: String) {
        
        
        print("Second")
        lblDisplay1.text! = dataSend
        print("Success")
    }
    
    
    var data1 : String = ""
    
    @IBOutlet weak var txtData1: UITextField!
    @IBOutlet weak var lblDisplay1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend1(_ sender: UIButton) {
        
        performSegue(withIdentifier: "next"
        , sender: .none  )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "next" {
            let obj1 = segue.destination as! SecondViewController
            
            obj1.data2 = txtData1.text!

            obj1.delegate = self
            
            print("First")
        }
        
        
        
    }
    
}

