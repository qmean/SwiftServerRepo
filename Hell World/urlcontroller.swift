//
//  urlcontroller.swift
//  urlTest
//
//  Created by 김규민 on 2023/11/04.
//

import Foundation

class urlRequest {
    init(urlrequest: String) {
        url = URL(string: urlrequest)!
        self.request = URLRequest(url: url)
        self.request.httpMethod = "GET"
    }
    
    func trylogin(email :String, password :String) -> Void
    {
        let urlstring = "http://localhost:8080/login?email=" + email + "&password=" + password
        print("{trylogin}urlstring : " + urlstring)
        url = URL(string: urlstring)!
        request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let task = session.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard error == nil else {
                print("Error occur: error calling GET - \(String(describing: error))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                    print("Error: HTTP request failed")
                    return
                }
            
            print("{trylogin}Response status code: \(response.statusCode)")
            
            if response.statusCode == 200 {
                // HTTP 응답 코드가 200인 경우에만 처리를 수행합니다.
                self.login = true
            } else {
                self.login = false
            }
        }
        task.resume()
    }
    
    
    var url: URL
    let session = URLSession.shared
    var request: URLRequest
    var login = false
}
