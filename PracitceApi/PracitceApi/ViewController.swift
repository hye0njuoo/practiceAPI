//
//  ViewController.swift
//  PracitceApi
//
//  Created by 성현주 on 2023/06/19.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getTest()
    }
    func getTest() {
        let url = "https://jsonplaceholder.typicode.com/todos/1"
        AF.request(url, method: .get ,parameters: nil ,encoding: URLEncoding.default,headers: ["Content-Type":"application/json","Accept":"application/json"] )
            .validate(statusCode: 200..<300)
            .responseJSON{(json) in
                print (json)

            }

    }
    
        
    }
    

