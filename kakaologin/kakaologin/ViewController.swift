//
//  ViewController.swift
//  kakaologin
//
//  Created by 성현주 on 2023/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//#ifDEBUG
import SwiftUI

struct ViewControllerPresentable: UIViewControllerRepresentable{
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}

struct ViewControllerPrepresentable_PreViewProvider : PreviewProvider{
    static var previews: some View{
        ViewControllerPresentable()
    }
}

//#endif
