//
//  ViewController.swift
//  Hell World
//
//  Created by 김규민 on 2023/10/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var requestPWD: UITextField!
    @IBOutlet var requestEMAIL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        let request = urlRequest(urlrequest: "url")
        request.trylogin(email: requestEMAIL.text!, password: requestPWD.text!)
        if request.login == true
        {
            lblHello.text = "request success"
        }
        else
        {
            lblHello.text = "request failes"
        }
    }
}
