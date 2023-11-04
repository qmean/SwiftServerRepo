//
//  WebViewController.swift
//  Hell World
//
//  Created by 김규민 on 2023/11/05.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var Webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://localhost:8080/payment")!
        let request = URLRequest(url: url)
        Webview.load(request)
        // Do any additional setup after loading the view.
    }
    

    

}
