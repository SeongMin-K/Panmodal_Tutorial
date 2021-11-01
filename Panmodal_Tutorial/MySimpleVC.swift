//
//  MySimpleVC.swift
//  Panmodal_Tutorial
//
//  Created by SeongMinK on 2021/11/01.
//

import UIKit
import PanModal

class MySimpleVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, "called")
    }
    @IBAction func onConfirmBtnClicked(_ sender: UIButton) {
        print(#fileID, #function, "called")
        self.dismiss(animated: true, completion: nil)
    }
}

extension MySimpleVC: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }
}
