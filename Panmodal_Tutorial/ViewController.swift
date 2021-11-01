//
//  ViewController.swift
//  Panmodal_Tutorial
//
//  Created by SeongMinK on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableModalBtn: UIButton!
    @IBOutlet weak var ModalBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#fileID, #function, "called")
    }


    @IBAction func onModalBtnClicked(_ sender: UIButton) {
        print(#fileID, #function, "called")
        
        switch sender {
        case tableModalBtn:
            print("tableModalBtn Clicked")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyTableVC") as! MyTableVC
            presentPanModal(vc)
        case ModalBtn:
            print("ModalBtn Clicked")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MySimpleVC") as! MySimpleVC
            presentPanModal(vc)
        default: break
        }
    }
}

