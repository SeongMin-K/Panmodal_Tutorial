//
//  MyTableVC.swift
//  Panmodal_Tutorial
//
//  Created by SeongMinK on 2021/11/01.
//

import UIKit
import PanModal

class MyTableVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, "called")
    }
}

extension MyTableVC: PanModalPresentable {
    var panScrollable: UIScrollView? {
        return tableView
    }
    
    // 최초 테이블 뷰 길이
    var shortFormHeight: PanModalHeight {
        return .contentHeight(300)
    }
    
    // 최대 테이블 뷰 길이
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(100)
    }
    
    // 화면 최상단 스크롤 여부
    var anchorModalToLongForm: Bool {
        return true
    }
}
