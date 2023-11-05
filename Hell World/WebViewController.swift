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
    
    let url = URL(string: "http://localhost:8080/payment")!
    private var webView: WKWebView!/** 웹 뷰 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = WKWebViewConfiguration()
        let preferences = WKWebpagePreferences()

        /** JavaScript 사용 설정 */
        preferences.allowsContentJavaScript = true

        config.defaultWebpagePreferences = preferences

        Webview = WKWebView(frame: view.frame, configuration: config)
        self.view.addSubview(Webview)
        let request = URLRequest(url: url)
        Webview.load(request)
        // Do any additional setup after loading the view.
    }
}
