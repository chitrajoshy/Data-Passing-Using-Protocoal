//
//  SecondViewController.swift
//  Data Passing Using Protocoal
//
//  Created by AKASH on 31/07/19.
//  Copyright © 2019 CDNS. All rights reserved.
//

import UIKit


protocol sendBackData {
    func sendBack(dataSend : String)
}

class SecondViewController: UIViewController {
    
    var data2 : String = ""
    var delegate : sendBackData?
    
    
    @IBOutlet weak var txtData2: UITextField!
    @IBOutlet weak var lblDisplay2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDisplay2.text = data2

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSend2(_ sender: UIButton) {
        
        delegate?.sendBack(dataSend: txtData2.text!)
        dismiss(animated: true, completion: nil)
        
    }
    
}
